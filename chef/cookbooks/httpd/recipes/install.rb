# Cookbook Name:: httpd
# Recipe:: install
#
# Copyright IBM Corp. 2016, 2017
#
# <> Installation recipe (install.rb)
# <> Perform an installation of selected httpd package on the target node.

expand_area = node['httpd']['expand_area']
sw_repo_root = node['ibm']['sw_repo_root']
sw_repo_path = node['httpd']['sw_repo_path']

if node['httpd']['install_from_repo'] == 'true'
  # Fetch tarball from repo
  ibm_cloud_utils_unpack "unpack-#{node['httpd']['tarball']}" do
    source "#{sw_repo_root}#{sw_repo_path}/#{node['httpd']['tarball']}"
    target_dir expand_area
    vault_name node['httpd']['vault']['name']
    vault_item node['httpd']['vault']['encrypted_id']
    repo_self_signed_cert node['ibm']['sw_repo_self_signed_cert']
    remove_local true
  end

  case node['platform_family']
  when 'rhel'
    # Install rpm packages

    node['httpd']['archive_names'].each_pair do |_key, pkg|
      package pkg['binary'] do
        action :install
        source "#{expand_area}/#{pkg['binary']}"
        not_if "rpm -q #{File.basename(pkg['binary'], '.rpm')}"
      end
    end

    directory '/etc/httpd/conf.modules.d/' do
      action :create
      mode '0755'
      recursive true
    end

    template "/etc/httpd/conf.modules.d/00-mpm.conf" do
      source '00-mpm.conf.erb'
      cookbook 'httpd' # specified to avoid FC033 warning: https://github.com/acrmp/foodcritic/issues/449
      owner 'root'
      group 'root'
      mode node['httpd']['conf_file_mode']
    end

    template "/etc/httpd/conf.modules.d/00-base.conf" do
      source '00-base.conf.erb'
      cookbook 'httpd' # specified to avoid FC033 warning: https://github.com/acrmp/foodcritic/issues/449
      owner 'root'
      group 'root'
      mode node['httpd']['conf_file_mode']
    end

    template "/etc/httpd/conf.modules.d/00-proxy.conf" do
      source '00-proxy.conf.erb'
      cookbook 'httpd' # specified to avoid FC033 warning: https://github.com/acrmp/foodcritic/issues/449
      owner 'root'
      group 'root'
      mode node['httpd']['conf_file_mode']
    end


  when 'windows'
    # Install from .msi source
    windows_package 'apache-http' do
      action :install
      source "#{expand_area}\\apache_2.2.4-win32-x86-openssl-0.9.8d.msi"
    end
  end

else

  # Install from yum repo
  ['httpd-tools', 'httpd'].each do |p|
    package p do
      action :install
    end
  end

  package 'mod_ssl' do
    action :install
    only_if { node['httpd']['ssl']['install_mod_ssl'] == 'true' }
  end

  node['httpd']['php_packages'].each do |pk|
    package pk do
      action :install
      only_if { node['httpd']['php_mod_enabled'] == 'true' }
    end
  end
end
