Httpd Cookbook
==============

## DESCRIPTION
The Apache HTTP cookbook provides the necessary resources to install and manage Apache HTTP Server
## Platforms Support
* RHEL 6.x
* RHEL 7.x

## Versions
Apache HTTP Server 2.4

## Use Cases
* Single installation with no configuration.
* Single installation with SSL and Proxy configuration

## Platform Pre-Requisites
* Linux YUM Repository - An onsite linux YUM Repsoitory is required.



Requirements
------------

### Platform:

*No platforms defined*

### Cookbooks:

* ibm_cloud_utils

Attributes
----------

<table>
  <tr>
    <td>Attribute</td>
    <td>Description</td>
    <td>Default</td>
  </tr>
  <tr>
    <td><code>node['httpd']['archive_names']['apr']['binary']</code></td>
    <td>HTTP Server apr binary</td>
    <td><code>apr-1.5.2-1.x86_64.rpm</code></td>
  </tr>
  <tr>
    <td><code>node['httpd']['archive_names']['apr-devel']['binary']</code></td>
    <td>HTTP Server apr-devel binary</td>
    <td><code>apr-devel-1.5.2-1.x86_64.rpm</code></td>
  </tr>
  <tr>
    <td><code>node['httpd']['archive_names']['apr-util']['binary']</code></td>
    <td>HTTP Server apr util binary</td>
    <td><code>apr-util-1.5.4-1.x86_64.rpm</code></td>
  </tr>
  <tr>
    <td><code>node['httpd']['archive_names']['httpd']['binary']</code></td>
    <td>HTTP Server binary</td>
    <td><code>httpd-2.4.25-1.x86_64.rpm</code></td>
  </tr>
  <tr>
    <td><code>node['httpd']['archive_names']['httpd-tools']['binary']</code></td>
    <td>HTTP Server httpd-tools binary</td>
    <td><code>httpd-tools-2.4.25-1.x86_64.rpm</code></td>
  </tr>
  <tr>
    <td><code>node['httpd']['archive_names']['mod.proxy']['binary']</code></td>
    <td>HTTP Server mod_proxy binary</td>
    <td><code>mod_proxy_html-2.4.25-1.x86_64.rpm</code></td>
  </tr>
  <tr>
    <td><code>node['httpd']['archive_names']['mod_ssl']['binary']</code></td>
    <td>HTTP Server mod_ssl binary</td>
    <td><code>mod_ssl-2.4.25-1.x86_64.rpm</code></td>
  </tr>
  <tr>
    <td><code>node['httpd']['conf_file_mode']</code></td>
    <td>httpd conf_file_mode</td>
    <td><code>0640</code></td>
  </tr>
  <tr>
    <td><code>node['httpd']['custom_log']</code></td>
    <td>httpd custom_log</td>
    <td><code>access_log</code></td>
  </tr>
  <tr>
    <td><code>node['httpd']['custom_log_format']</code></td>
    <td>httpd custom_log_format</td>
    <td><code>combined</code></td>
  </tr>
  <tr>
    <td><code>node['httpd']['data_dir_mode']</code></td>
    <td>httpd data_dir_mode</td>
    <td><code>0750</code></td>
  </tr>
  <tr>
    <td><code>node['httpd']['directory_index']</code></td>
    <td>httpd directory_index</td>
    <td><code>index.html info.php</code></td>
  </tr>
  <tr>
    <td><code>node['httpd']['document_root']</code></td>
    <td>httpd document_root</td>
    <td><code></code></td>
  </tr>
  <tr>
    <td><code>node['httpd']['enable_MMAP']</code></td>
    <td>httpd enable_MMAP</td>
    <td><code>off</code></td>
  </tr>
  <tr>
    <td><code>node['httpd']['enable_send_file']</code></td>
    <td>httpd enable_send_file</td>
    <td><code>off</code></td>
  </tr>
  <tr>
    <td><code>node['httpd']['error_log']</code></td>
    <td>httpd error_log</td>
    <td><code>error_log</code></td>
  </tr>
  <tr>
    <td><code>node['httpd']['hostname_lookups']</code></td>
    <td>httpd hostname_lookups</td>
    <td><code>off</code></td>
  </tr>
  <tr>
    <td><code>node['httpd']['httpd_home']</code></td>
    <td>httpd httpd_home</td>
    <td><code></code></td>
  </tr>
  <tr>
    <td><code>node['httpd']['install_dir']</code></td>
    <td>httpd install_dir</td>
    <td><code></code></td>
  </tr>
  <tr>
    <td><code>node['httpd']['install_from_repo']</code></td>
    <td>httpd install_from_repo</td>
    <td><code>true</code></td>
  </tr>
  <tr>
    <td><code>node['httpd']['keep_alive']</code></td>
    <td>httpd keep_alive</td>
    <td><code>off</code></td>
  </tr>
  <tr>
    <td><code>node['httpd']['keep_alive_timeout']</code></td>
    <td>httpd keep_alive_timeout</td>
    <td><code>15</code></td>
  </tr>
  <tr>
    <td><code>node['httpd']['listen']</code></td>
    <td>httpd listen</td>
    <td><code>80</code></td>
  </tr>
  <tr>
    <td><code>node['httpd']['log_dir']</code></td>
    <td>httpd log_dir</td>
    <td><code></code></td>
  </tr>
  <tr>
    <td><code>node['httpd']['log_level']</code></td>
    <td>httpd log_level</td>
    <td><code>warn</code></td>
  </tr>
  <tr>
    <td><code>node['httpd']['max_keep_alive_requests']</code></td>
    <td>httpd max_keep_alive_requests</td>
    <td><code>100</code></td>
  </tr>
  <tr>
    <td><code>node['httpd']['os_users']['daemon']['comment']</code></td>
    <td>httpd os_users daemon comment</td>
    <td><code>httpd daemon user</code></td>
  </tr>
  <tr>
    <td><code>node['httpd']['os_users']['daemon']['gid']</code></td>
    <td>httpd os_users daemon gid</td>
    <td><code>apache</code></td>
  </tr>
  <tr>
    <td><code>node['httpd']['os_users']['daemon']['home']</code></td>
    <td>httpd os_users daemon home</td>
    <td><code></code></td>
  </tr>
  <tr>
    <td><code>node['httpd']['os_users']['daemon']['ldap_user']</code></td>
    <td>httpd os_users daemon ldap_user</td>
    <td><code>false</code></td>
  </tr>
  <tr>
    <td><code>node['httpd']['os_users']['daemon']['name']</code></td>
    <td>httpd os_users daemon name</td>
    <td><code>apache</code></td>
  </tr>
  <tr>
    <td><code>node['httpd']['os_users']['daemon']['shell']</code></td>
    <td>httpd os_users daemon shell</td>
    <td><code>/sbin/nologin</code></td>
  </tr>
  <tr>
    <td><code>node['httpd']['os_users']['web_content_owner']['comment']</code></td>
    <td>httpd os_users web_content_owner comment</td>
    <td><code>httpd daemon user</code></td>
  </tr>
  <tr>
    <td><code>node['httpd']['os_users']['web_content_owner']['gid']</code></td>
    <td>httpd os_users web_content_owner gid</td>
    <td><code>apache</code></td>
  </tr>
  <tr>
    <td><code>node['httpd']['os_users']['web_content_owner']['home']</code></td>
    <td>httpd os_users web_content_owner home</td>
    <td><code>/home/webmaster</code></td>
  </tr>
  <tr>
    <td><code>node['httpd']['os_users']['web_content_owner']['ldap_user']</code></td>
    <td>httpd os_users web_content_owner ldap_user</td>
    <td><code>false</code></td>
  </tr>
  <tr>
    <td><code>node['httpd']['os_users']['web_content_owner']['name']</code></td>
    <td>httpd os_users web_content_owner name</td>
    <td><code>webmaster</code></td>
  </tr>
  <tr>
    <td><code>node['httpd']['os_users']['web_content_owner']['shell']</code></td>
    <td>httpd os_users web_content_owner shell</td>
    <td><code>/bin/bash</code></td>
  </tr>
  <tr>
    <td><code>node['httpd']['php_mod_enabled']</code></td>
    <td>httpd php_mod_enabled</td>
    <td><code>true</code></td>
  </tr>
  <tr>
    <td><code>node['httpd']['prefork_max_clients']</code></td>
    <td>httpd prefork_max_clients</td>
    <td><code>256</code></td>
  </tr>
  <tr>
    <td><code>node['httpd']['prefork_max_requests_per_child']</code></td>
    <td>httpd prefork_max_requests_per_child</td>
    <td><code>4000</code></td>
  </tr>
  <tr>
    <td><code>node['httpd']['prefork_max_spare_servers']</code></td>
    <td>httpd prefork_max_spare_servers</td>
    <td><code>20</code></td>
  </tr>
  <tr>
    <td><code>node['httpd']['prefork_min_spare_servers']</code></td>
    <td>httpd prefork_min_spare_servers</td>
    <td><code>5</code></td>
  </tr>
  <tr>
    <td><code>node['httpd']['prefork_server_limit']</code></td>
    <td>httpd prefork_server_limit</td>
    <td><code>256</code></td>
  </tr>
  <tr>
    <td><code>node['httpd']['prefork_start_servers']</code></td>
    <td>httpd prefork_start_servers</td>
    <td><code>8</code></td>
  </tr>
  <tr>
    <td><code>node['httpd']['prereq_packages']</code></td>
    <td>httpd prereq_packages</td>
    <td><code></code></td>
  </tr>
  <tr>
    <td><code>node['httpd']['proxy']</code></td>
    <td>Global proxy settings configuration</td>
    <td><code>true</code></td>
  </tr>
  <tr>
    <td><code>node['httpd']['server_admin']</code></td>
    <td>httpd server_admin</td>
    <td><code>webmaster@localhost</code></td>
  </tr>
  <tr>
    <td><code>node['httpd']['server_name']</code></td>
    <td>httpd server_name</td>
    <td><code></code></td>
  </tr>
  <tr>
    <td><code>node['httpd']['server_root']</code></td>
    <td>httpd server_root</td>
    <td><code></code></td>
  </tr>
  <tr>
    <td><code>node['httpd']['service_name']</code></td>
    <td>httpd service_name</td>
    <td><code>httpd</code></td>
  </tr>
  <tr>
    <td><code>node['httpd']['ssl']['install_mod_ssl']</code></td>
    <td>Installs mod SSL or not</td>
    <td><code>true</code></td>
  </tr>
  <tr>
    <td><code>node['httpd']['ssl']['sslcompression']</code></td>
    <td>Enable SSL compression</td>
    <td><code></code></td>
  </tr>
  <tr>
    <td><code>node['httpd']['ssl']['sslproxycacertificatefile']</code></td>
    <td>SSL proxy Certificate file name</td>
    <td><code></code></td>
  </tr>
  <tr>
    <td><code>node['httpd']['ssl']['sslproxycacertificatepath']</code></td>
    <td>SSL proxy Certificate file path</td>
    <td><code></code></td>
  </tr>
  <tr>
    <td><code>node['httpd']['ssl']['sslproxycarevocationcheck']</code></td>
    <td>SSL proxy CA revocation check</td>
    <td><code></code></td>
  </tr>
  <tr>
    <td><code>node['httpd']['ssl']['sslproxycarevocationfile']</code></td>
    <td>SSL proxy CA revocation file</td>
    <td><code></code></td>
  </tr>
  <tr>
    <td><code>node['httpd']['tarball']</code></td>
    <td>RHEL tarball file</td>
    <td><code></code></td>
  </tr>
  <tr>
    <td><code>node['httpd']['timeout']</code></td>
    <td>httpd timeout</td>
    <td><code>60</code></td>
  </tr>
  <tr>
    <td><code>node['httpd']['use_canonical_name']</code></td>
    <td>httpd use_canonical_name</td>
    <td><code>off</code></td>
  </tr>
  <tr>
    <td><code>node['httpd']['version']</code></td>
    <td>httpd version</td>
    <td><code></code></td>
  </tr>
  <tr>
    <td><code>node['httpd']['vhosts_enabled']</code></td>
    <td>Vhost enabled</td>
    <td><code>true</code></td>
  </tr>
  <tr>
    <td><code>node['httpd']['virtualhosts']['default_http_server']['custom_log']</code></td>
    <td>Vhost custom log dir</td>
    <td><code></code></td>
  </tr>
  <tr>
    <td><code>node['httpd']['virtualhosts']['default_http_server']['custom_log_format']</code></td>
    <td>Vhost custom log format</td>
    <td><code>combined</code></td>
  </tr>
  <tr>
    <td><code>node['httpd']['virtualhosts']['default_http_server']['document_root']</code></td>
    <td>Vhost document root</td>
    <td><code></code></td>
  </tr>
  <tr>
    <td><code>node['httpd']['virtualhosts']['default_http_server']['error_log']</code></td>
    <td>Vhost error log dir</td>
    <td><code></code></td>
  </tr>
  <tr>
    <td><code>node['httpd']['virtualhosts']['default_http_server']['global_ssl_config']</code></td>
    <td>Global SSL configuration</td>
    <td><code>true</code></td>
  </tr>
  <tr>
    <td><code>node['httpd']['virtualhosts']['default_http_server']['log_dir']</code></td>
    <td>Vhost log dir</td>
    <td><code></code></td>
  </tr>
  <tr>
    <td><code>node['httpd']['virtualhosts']['default_http_server']['server_admin']</code></td>
    <td>Vhost Server admin</td>
    <td><code></code></td>
  </tr>
  <tr>
    <td><code>node['httpd']['virtualhosts']['default_http_server']['server_name']</code></td>
    <td>Vhost server name for directing requests</td>
    <td><code></code></td>
  </tr>
  <tr>
    <td><code>node['httpd']['virtualhosts']['default_http_server']['ssl_enabled']</code></td>
    <td>SSL Enabled for Virtual Host</td>
    <td><code>false</code></td>
  </tr>
  <tr>
    <td><code>node['httpd']['virtualhosts']['default_http_server']['vhost_listen']</code></td>
    <td>Port Vhost listens on</td>
    <td><code>80</code></td>
  </tr>
  <tr>
    <td><code>node['httpd']['virtualhosts']['default_http_server']['vhost_type']</code></td>
    <td>name_based or ip_based</td>
    <td><code>name_based</code></td>
  </tr>
  <tr>
    <td><code>node['httpd']['virtualhosts']['default_https_server']['custom_log']</code></td>
    <td>Vhost custom log dir</td>
    <td><code></code></td>
  </tr>
  <tr>
    <td><code>node['httpd']['virtualhosts']['default_https_server']['custom_log_format']</code></td>
    <td>Vhost custom log format</td>
    <td><code>combined</code></td>
  </tr>
  <tr>
    <td><code>node['httpd']['virtualhosts']['default_https_server']['document_root']</code></td>
    <td>Vhost document root</td>
    <td><code></code></td>
  </tr>
  <tr>
    <td><code>node['httpd']['virtualhosts']['default_https_server']['error_log']</code></td>
    <td>Vhost error log dir</td>
    <td><code></code></td>
  </tr>
  <tr>
    <td><code>node['httpd']['virtualhosts']['default_https_server']['global_ssl_config']</code></td>
    <td>Global SSL configuration</td>
    <td><code>true</code></td>
  </tr>
  <tr>
    <td><code>node['httpd']['virtualhosts']['default_https_server']['log_dir']</code></td>
    <td>Vhost log dir</td>
    <td><code></code></td>
  </tr>
  <tr>
    <td><code>node['httpd']['virtualhosts']['default_https_server']['server_admin']</code></td>
    <td>Vhost Server admin</td>
    <td><code></code></td>
  </tr>
  <tr>
    <td><code>node['httpd']['virtualhosts']['default_https_server']['server_name']</code></td>
    <td>Vhost server name for directing requests</td>
    <td><code></code></td>
  </tr>
  <tr>
    <td><code>node['httpd']['virtualhosts']['default_https_server']['ssl_enabled']</code></td>
    <td>SSL Enabled for Virtual Host</td>
    <td><code>true</code></td>
  </tr>
  <tr>
    <td><code>node['httpd']['virtualhosts']['default_https_server']['vhost_listen']</code></td>
    <td>Port Vhost listens on</td>
    <td><code>443</code></td>
  </tr>
  <tr>
    <td><code>node['httpd']['virtualhosts']['default_https_server']['vhost_type']</code></td>
    <td>name_based or ip_based</td>
    <td><code>name_based</code></td>
  </tr>
  <tr>
    <td><code>node['httpd']['worker_max_clients']</code></td>
    <td>httpd worker_max_clients</td>
    <td><code>25</code></td>
  </tr>
  <tr>
    <td><code>node['httpd']['worker_max_requests_per_child']</code></td>
    <td>httpd worker_max_requests_per_child</td>
    <td><code>0</code></td>
  </tr>
  <tr>
    <td><code>node['httpd']['worker_max_spare_servers']</code></td>
    <td>httpd worker_max_spare_servers</td>
    <td><code>25</code></td>
  </tr>
  <tr>
    <td><code>node['httpd']['worker_min_spare_servers']</code></td>
    <td>httpd worker_min_spare_servers</td>
    <td><code>300</code></td>
  </tr>
  <tr>
    <td><code>node['httpd']['worker_server_limit']</code></td>
    <td>httpd worker_server_limit</td>
    <td><code>75</code></td>
  </tr>
  <tr>
    <td><code>node['httpd']['worker_start_servers']</code></td>
    <td>httpd worker_start_servers</td>
    <td><code>4</code></td>
  </tr>
</table>

Recipes
-------

### httpd::cleanup.rb


Cleanup recipe (cleanup.rb)
Perform post-install cleanup


### httpd::config_httpd_conf.rb


Configure httpd server recipe (config_httpd_conf.rb)
Setup the main server configuration file


### httpd::config_ssl.rb


SSL configuration recipe (config_proxy.rb)
Install mod_ssl, create SSL configuration file, create certificates


### httpd::config_vhosts.rb


vhost configuration recipe (config_vhost.rb)
Create vhost configuration file


### httpd::default.rb


Default recipe (default.rb)
The default recipe for the cookbook. It is recommended to not use the default recipe, but explicitly specify a run_list for the deployment node.


### httpd::gather_evidence.rb


Gather evidence recipe (gather_evidence.rb)
Gather evidence that installation was successful


### httpd::install.rb


Installation recipe (install.rb)
Perform an installation of selected httpd package on the target node.


### httpd::prereq.rb


Prerequisites recipe (prereq.rb)
Perform prerequisite tasks.


### httpd::service.rb


Service control recipe (service.rb)
Enable and start the httpd service



License and Author
------------------

Author:: IBM Corp (<>)

Copyright:: 2017, IBM Corp

License:: Copyright IBM Corp. 2016, 2017

