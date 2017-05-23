#
# Cookbook Name:: httpd
# attributes :: internal
#
# Copyright IBM Corp. 2016, 2017

#-------------------------------------------------------------------------------
# Landscaper compatibility attributes
#-------------------------------------------------------------------------------

# <> The path on the repository server where the binaries, sources, scripts or other automation artifacts ar stored
force_default['httpd']['sw_repo_path'] = '/apache/httpd/v2.4.25/base/'

# <> The path on the repo server for each distribution
case node['platform_family']
when 'rhel'
  # <> The name of the artifacts archive
  force_default['httpd']['evidence_zip'] = "#{node['ibm']['evidence_path']['unix']}/httpd-#{node['hostname']}-#{Time.now.strftime('%Y-%m-%d%H-%M-%S')}.tar"
  # <> The name of the log file for gathered evidence
  force_default['httpd']['evidence_log'] = "httpd-#{node['hostname']}-#{Time.now.strftime('%Y-%m-%d%H-%M-%S')}.log"
  # <> PHP packages rhel
  force_default['httpd']['php_packages'] = ['php', 'php-mysql']

  if node['platform_version'].start_with?("6.")
    # <> The path on the repository server where the RHEL6 binaries are
    force_default['httpd']['sw_repo_path'] = node['httpd']['sw_repo_path']+'/rhel6/'
  elsif node['platform_version'].start_with?("7.")
    # <> The path on the repository server where the RHEL6 binaries are
    force_default['httpd']['sw_repo_path'] = node['httpd']['sw_repo_path']+'/rhel7/'
  end

when 'debian'
  # <> PHP packages ubuntu
  force_default['httpd']['php_packages'] = ['php5', 'libapache2-mod-php5', 'php5-mcrypt']

when 'windows'
  # <> Prereq packages ubuntu
  force_default['httpd']['prereq_packages'] = ['php5.msi', 'libapache2-mod-php5.msi', 'php5-mcrypt.msi']
end


# <> A temporary directory used for the extraction of installation files
force_override['httpd']['expand_area'] = node['ibm']['expand_area'] + '/' + 'httpd'


#-------------------------------------------------------------------------------
# Vault parameters
#-------------------------------------------------------------------------------


force_default['httpd']['vault']['name'] = node['ibm_internal']['vault']['name']

# <> ID in the vault that is encrypted. Preferably the root ID, to encrypt everything
force_default['httpd']['vault']['encrypted_id'] = node['ibm_internal']['vault']['item']
