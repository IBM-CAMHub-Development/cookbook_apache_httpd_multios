#
# Cookbook Name:: httpd
# attributes :: default
#
# Copyright IBM Corp. 2016, 2017

# <> Product specific defaults

# <> Root dir of the install; for chroot or SCL type installs
# <md>attribute 'httpd/install_dir',
# <md>          :displayname =>  'httpd install_dir',
# <md>          :description => 'httpd install_dir',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'none',
# <md>          :secret => 'false'
default['httpd']['install_dir'] = ''

# <> Logging directory of the Apache install
# <md>attribute 'httpd/log_dir',
# <md>          :displayname =>  'httpd log_dir',
# <md>          :description => 'httpd log_dir',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'
default['httpd']['log_dir'] = '/var/log/httpd'

# <> Webserver log level
# <md>attribute 'httpd/log_level',
# <md>          :displayname =>  'httpd log_level',
# <md>          :description => 'httpd log_level',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'warn',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'none',
# <md>          :secret => 'false'
default['httpd']['log_level'] = 'warn'

# <> Webserver error log filename
# <md>attribute 'httpd/error_log',
# <md>          :displayname =>  'httpd error_log',
# <md>          :description => 'httpd error_log',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'error_log',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'none',
# <md>          :secret => 'false'
default['httpd']['error_log'] = 'error_log'

# <> Webserver custom log filename
# <md>attribute 'httpd/custom_log',
# <md>          :displayname =>  'httpd custom_log',
# <md>          :description => 'httpd custom_log',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'access_log',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'none',
# <md>          :secret => 'false'
default['httpd']['custom_log'] = 'access_log'

# <> Prerequisites packages
# <md>attribute 'httpd/prereq_packages',
# <md>          :displayname =>  'httpd prereq_packages',
# <md>          :description => 'httpd prereq_packages',
# <md>          :type => 'array',
# <md>          :required => 'recommended',
# <md>          :default => '',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'none',
# <md>          :secret => 'false'
default['httpd']['prereq_packages'] = ['pyOpenSSL', 'openssl', 'net-tools']

# <> Enable PHP mod
# <md>attribute 'httpd/php_mod_enabled',
# <md>          :displayname =>  'httpd php_mod_enabled',
# <md>          :description => 'httpd php_mod_enabled',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'true',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'
default['httpd']['php_mod_enabled'] = 'true'

# <> Apache HTTP Server Installation version
# <md>attribute 'httpd/version',
# <md>          :displayname =>  'httpd version',
# <md>          :description => 'httpd version',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'none',
# <md>          :secret => 'false'
default['httpd']['version'] = '2.4'

# <> Decision flag which establishes wether the product is installed for specific sources or from custom repository
# <md>attribute 'httpd/install_from_repo',
# <md>          :displayname =>  'httpd install_from_repo',
# <md>          :description => 'httpd install_from_repo',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'true',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'
default['httpd']['install_from_repo'] = 'true'

# <> The name of the Apache Http Server service
# <md>attribute 'httpd/service_name',
# <md>          :displayname =>  'httpd service_name',
# <md>          :description => 'httpd service_name',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'httpd',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'none',
# <md>          :secret => 'false'
default['httpd']['service_name'] = 'httpd'

# <> Server root
# <md>attribute 'httpd/server_root',
# <md>          :displayname =>  'httpd server_root',
# <md>          :description => 'httpd server_root',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'none',
# <md>          :secret => 'false'
default['httpd']['server_root'] = node['httpd']['install_dir'] + "/etc/httpd"

# <> Webserver home
# <md>attribute 'httpd/httpd_home',
# <md>          :displayname =>  'httpd httpd_home',
# <md>          :description => 'httpd httpd_home',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'none',
# <md>          :secret => 'false'
default['httpd']['httpd_home'] = node['httpd']['install_dir'] + "/var/www"

# <> Webserver document root
# <md>attribute 'httpd/document_root',
# <md>          :displayname =>  'httpd document_root',
# <md>          :description => 'httpd document_root',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'none',
# <md>          :secret => 'false'
default['httpd']['document_root'] = node['httpd']['install_dir'] + "/var/www/html"

# <> Directory mode for data
# <md>attribute 'httpd/data_dir_mode',
# <md>          :displayname =>  'httpd data_dir_mode',
# <md>          :description => 'httpd data_dir_mode',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '0750',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'none',
# <md>          :secret => 'false'
default['httpd']['data_dir_mode'] = '0750'

# <> File mode for configuration files
# <md>attribute 'httpd/conf_file_mode',
# <md>          :displayname =>  'httpd conf_file_mode',
# <md>          :description => 'httpd conf_file_mode',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '0640',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'none',
# <md>          :secret => 'false'
default['httpd']['conf_file_mode'] = '0640'

# <> Main server port
# <md>attribute 'httpd/listen',
# <md>          :displayname =>  'httpd listen',
# <md>          :description => 'httpd listen',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '80',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'
default['httpd']['listen'] = '80'

# <> Main server server-name
# <md>attribute 'httpd/server_name',
# <md>          :displayname =>  'httpd server_name',
# <md>          :description => 'httpd server_name',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'none',
# <md>          :secret => 'false'
default['httpd']['server_name'] = node['fqdn']

# <> Webserver custom log format
# <md>attribute 'httpd/custom_log_format',
# <md>          :displayname =>  'httpd custom_log_format',
# <md>          :description => 'httpd custom_log_format',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'combined',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'none',
# <md>          :secret => 'false'
default['httpd']['custom_log_format'] = 'combined'

# <> Webserver admin
# <md>attribute 'httpd/server_admin',
# <md>          :displayname =>  'httpd server_admin',
# <md>          :description => 'httpd server_admin',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'webmaster@localhost',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'none',
# <md>          :secret => 'false'
default['httpd']['server_admin'] = 'webmaster@localhost'

# <> Webserver directory index
# <md>attribute 'httpd/directory_index',
# <md>          :displayname =>  'httpd directory_index',
# <md>          :description => 'httpd directory_index',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'index.html info.php',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'none',
# <md>          :secret => 'false'
default['httpd']['directory_index'] = 'index.html info.php'

# <> UseCanonicalName
# <md>attribute 'httpd/use_canonical_name',
# <md>          :displayname =>  'httpd use_canonical_name',
# <md>          :description => 'httpd use_canonical_name',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'off',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'none',
# <md>          :secret => 'false'
default['httpd']['use_canonical_name'] = 'Off'

# <> Timeout
# <md>attribute 'httpd/timeout',
# <md>          :displayname =>  'httpd timeout',
# <md>          :description => 'httpd timeout',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '60',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'none',
# <md>          :secret => 'false'
default['httpd']['timeout'] = '60'

# <> KeepAlive
# <md>attribute 'httpd/keep_alive',
# <md>          :displayname =>  'httpd keep_alive',
# <md>          :description => 'httpd keep_alive',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'off',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'none',
# <md>          :secret => 'false'
default['httpd']['keep_alive'] = 'Off'

# <> MaxKeepAliveRequests
# <md>attribute 'httpd/max_keep_alive_requests',
# <md>          :displayname =>  'httpd max_keep_alive_requests',
# <md>          :description => 'httpd max_keep_alive_requests',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '100',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'none',
# <md>          :secret => 'false'
default['httpd']['max_keep_alive_requests'] = '100'

# <> KeepAliveTimeout
# <md>attribute 'httpd/keep_alive_timeout',
# <md>          :displayname =>  'httpd keep_alive_timeout',
# <md>          :description => 'httpd keep_alive_timeout',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '15',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'none',
# <md>          :secret => 'false'
default['httpd']['keep_alive_timeout'] = '15'

# <> HostnameLookups
# <md>attribute 'httpd/hostname_lookups',
# <md>          :displayname =>  'httpd hostname_lookups',
# <md>          :description => 'httpd hostname_lookups',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'off',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'none',
# <md>          :secret => 'false'
default['httpd']['hostname_lookups'] = 'Off'

# <> EnableMMAP
# <md>attribute 'httpd/enable_MMAP',
# <md>          :displayname =>  'httpd enable_MMAP',
# <md>          :description => 'httpd enable_MMAP',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'off',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'
default['httpd']['enable_MMAP'] = 'off'

# <> EnableSendFile
# <md>attribute 'httpd/enable_send_file',
# <md>          :displayname =>  'httpd enable_send_file',
# <md>          :description => 'httpd enable_send_file',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'off',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'none',
# <md>          :secret => 'false'
default['httpd']['enable_send_file'] = 'off'

# <> Prefork StartServers: number of server processes to start
# <md>attribute 'httpd/prefork_start_servers',
# <md>          :displayname =>  'httpd prefork_start_servers',
# <md>          :description => 'httpd prefork_start_servers',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '8',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'none',
# <md>          :secret => 'false'
default['httpd']['prefork_start_servers'] = '8'

# <> Prefork MinSpareServers: minim['vhost_1']um number of server processes which are kept spare
# <md>attribute 'httpd/prefork_min_spare_servers',
# <md>          :displayname =>  'httpd prefork_min_spare_servers',
# <md>          :description => 'httpd prefork_min_spare_servers',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '5',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'none',
# <md>          :secret => 'false'
default['httpd']['prefork_min_spare_servers'] = '5'

# <> Prefork MaxSpareServers: maximum number of server processes which are kept spare
# <md>attribute 'httpd/prefork_max_spare_servers',
# <md>          :displayname =>  'httpd prefork_max_spare_servers',
# <md>          :description => 'httpd prefork_max_spare_servers',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '20',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'none',
# <md>          :secret => 'false'
default['httpd']['prefork_max_spare_servers'] = '20'

# <> Prefork ServerLimit: maximum value for MaxClients for the lifetime of the server
# <md>attribute 'httpd/prefork_server_limit',
# <md>          :displayname =>  'httpd prefork_server_limit',
# <md>          :description => 'httpd prefork_server_limit',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '256',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'none',
# <md>          :secret => 'false'
default['httpd']['prefork_server_limit'] = '256'

# <> Prefork MaxClients: maximum number of server processes allowed to start
# <md>attribute 'httpd/prefork_max_clients',
# <md>          :displayname =>  'httpd prefork_max_clients',
# <md>          :description => 'httpd prefork_max_clients',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '256',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'none',
# <md>          :secret => 'false'
default['httpd']['prefork_max_clients'] = '256'

# <> Prefork MaxRequestsPerChild: maximum number of requests a server process serves
# <md>attribute 'httpd/prefork_max_requests_per_child',
# <md>          :displayname =>  'httpd prefork_max_requests_per_child',
# <md>          :description => 'httpd prefork_max_requests_per_child',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '4000',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'none',
# <md>          :secret => 'false'
default['httpd']['prefork_max_requests_per_child'] = '4000'

# <> Worker StartServers: number of server processes to start
# <md>attribute 'httpd/worker_start_servers',
# <md>          :displayname =>  'httpd worker_start_servers',
# <md>          :description => 'httpd worker_start_servers',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '4',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'none',
# <md>          :secret => 'false'
default['httpd']['worker_start_servers'] = '4'

# <> Worker MinSpareServers: minimum number of server processes which are kept spare
# <md>attribute 'httpd/worker_min_spare_servers',
# <md>          :displayname =>  'httpd worker_min_spare_servers',
# <md>          :description => 'httpd worker_min_spare_servers',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '300',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'
default['httpd']['worker_min_spare_servers'] = '300'

# <> Worker MaxSpareServers: maximum number of server processes which are kept spare
# <md>attribute 'httpd/worker_max_spare_servers',
# <md>          :displayname =>  'httpd worker_max_spare_servers',
# <md>          :description => 'httpd worker_max_spare_servers',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '25',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'
default['httpd']['worker_max_spare_servers'] = '25'

# <> Worker ServerLimit: maximum value for MaxClients for the lifetime of the server
# <md>attribute 'httpd/worker_server_limit',
# <md>          :displayname =>  'httpd worker_server_limit',
# <md>          :description => 'httpd worker_server_limit',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '75',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'
default['httpd']['worker_server_limit'] = '75'

# <> Worker MaxClients: maximum number of server processes allowed to start
# <md>attribute 'httpd/worker_max_clients',
# <md>          :displayname =>  'httpd worker_max_clients',
# <md>          :description => 'httpd worker_max_clients',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '25',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'
default['httpd']['worker_max_clients'] = '25'

# <> Worker MaxRequestsPerChild: maximum number of requests a server process serves
# <md>attribute 'httpd/worker_max_requests_per_child',
# <md>          :displayname =>  'httpd worker_max_requests_per_child',
# <md>          :description => 'httpd worker_max_requests_per_child',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '0',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'
default['httpd']['worker_max_requests_per_child'] = '0'

# <> OS Service Users       expected "package[httpd-2.4.17-1.x86_64.rpm]" with action :upgrade to be in Chef run. Other package resources:
# <md>attribute 'httpd/os_users/daemon/name',
# <md>          :displayname =>  'httpd os_users daemon name',
# <md>          :description => 'httpd os_users daemon name',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'apache',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'none',
# <md>          :secret => 'false'

# <md>attribute 'httpd/os_users/daemon/gid',
# <md>          :displayname =>  'httpd os_users daemon gid',
# <md>          :description => 'httpd os_users daemon gid',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'apache',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'none',
# <md>          :secret => 'false'

# <md>attribute 'httpd/os_users/daemon/ldap_user',
# <md>          :displayname =>  'httpd os_users daemon ldap_user',
# <md>          :description => 'httpd os_users daemon ldap_user',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'false',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'none',
# <md>          :secret => 'false'

# <md>attribute 'httpd/os_users/daemon/home',
# <md>          :displayname =>  'httpd os_users daemon home',
# <md>          :description => 'httpd os_users daemon home',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'none',
# <md>          :secret => 'false'

# <md>attribute 'httpd/os_users/daemon/comment',
# <md>          :displayname =>  'httpd os_users daemon comment',
# <md>          :description => 'httpd os_users daemon comment',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'httpd daemon user',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'none',
# <md>          :secret => 'false'

# <md>attribute 'httpd/os_users/daemon/shell',
# <md>          :displayname =>  'httpd os_users daemon shell',
# <md>          :description => 'httpd os_users daemon shell',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '/sbin/nologin',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'none',
# <md>          :secret => 'false'
default['httpd']['os_users']['daemon'] = {
  'name'      => 'apache',
  'gid'       => 'apache',
  'ldap_user' => 'false',
  'home'      => "#{node['httpd']['install_dir']}/usr/share/httpd",
  'comment'   => 'httpd daemon user',
  'shell'     => '/sbin/nologin'
}

# <> Web content owner
# <md>attribute 'httpd/os_users/web_content_owner/name',
# <md>          :displayname =>  'httpd os_users web_content_owner name',
# <md>          :description => 'httpd os_users web_content_owner name',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'webmaster',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'

# <md>attribute 'httpd/os_users/web_content_owner/gid',
# <md>          :displayname =>  'httpd os_users web_content_owner gid',
# <md>          :description => 'httpd os_users web_content_owner gid',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'apache',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'

# <md>attribute 'httpd/os_users/web_content_owner/ldap_user',
# <md>          :displayname =>  'httpd os_users web_content_owner ldap_user',
# <md>          :description => 'httpd os_users web_content_owner ldap_user',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'false',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'

# <md>attribute 'httpd/os_users/web_content_owner/home',
# <md>          :displayname =>  'httpd os_users web_content_owner home',
# <md>          :description => 'httpd os_users web_content_owner home',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '/home/webmaster',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'

# <md>attribute 'httpd/os_users/web_content_owner/comment',
# <md>          :displayname =>  'httpd os_users web_content_owner comment',
# <md>          :description => 'httpd os_users web_content_owner comment',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'httpd daemon user',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'none',
# <md>          :secret => 'false'

# <md>attribute 'httpd/os_users/web_content_owner/shell',
# <md>          :displayname =>  'httpd os_users web_content_owner shell',
# <md>          :description => 'httpd os_users web_content_owner shell',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '/bin/bash',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'none',
# <md>          :secret => 'false'
default['httpd']['os_users']['web_content_owner'] = {
  'name'      => 'webmaster',
  'gid'       => node['httpd']['os_users']['daemon']['gid'],
  'ldap_user' => 'false',
  'home'      => '/home/webmaster',
  'comment'   => 'Web content owner',
  'shell'     => '/bin/bash'
}

#-------------------------------------------------------------------------------
# SSL configuration
#-------------------------------------------------------------------------------
# <> SSL log dir
default['httpd']['ssl']['log_dir'] = node['httpd']['log_dir']
# <> SSL transfer log filename
default['httpd']['ssl']['transfer_log'] = 'ssl_transfer_log'
# <> SSL log level
default['httpd']['ssl']['log_level'] = 'warn'
# <> SSL self-signed certificate filename
default['httpd']['ssl']['certificate_name'] = node['fqdn']
# <> SSL self-signed certificate path
default['httpd']['ssl']['certificate_path'] = "#{node['httpd']['server_root']}/ssl"

# <md>attribute 'httpd/ssl/install_mod_ssl',
# <md>          :displayname =>  'InstallModSSL',
# <md>          :description => 'Installs mod SSL or not',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'true',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'
default['httpd']['ssl']['install_mod_ssl'] = 'true'

# <md>attribute 'httpd/ssl/sslcompression',
# <md>          :displayname =>  'EnableSSLCompression',
# <md>          :description => 'Enable SSL compression',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'none',
# <md>          :secret => 'false'
default['httpd']['ssl']['sslcompression'] = ""

# <md>attribute 'httpd/ssl/sslproxycacertificatefile',
# <md>          :displayname =>  'SSLProxyCertFileName',
# <md>          :description => 'SSL proxy Certificate file name',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'none',
# <md>          :secret => 'false'
default['httpd']['ssl']['sslproxycacertificatefile'] = ""

# <md>attribute 'httpd/ssl/sslproxycacertificatepath',
# <md>          :displayname =>  'SSLProxyCertFilePath',
# <md>          :description => 'SSL proxy Certificate file path',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'none',
# <md>          :secret => 'false'
default['httpd']['ssl']['sslproxycacertificatepath'] = ""

# <md>attribute 'httpd/ssl/sslproxycarevocationcheck',
# <md>          :displayname =>  'SSLProxyCARevocationCheck',
# <md>          :description => 'SSL proxy CA revocation check',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'none',
# <md>          :secret => 'false'
default['httpd']['ssl']['sslproxycarevocationcheck'] = ""

# <md>attribute 'httpd/ssl/sslproxycarevocationfile',
# <md>          :displayname =>  'SSLProxyCARevocationFile',
# <md>          :description => 'SSL proxy CA revocation file',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'none',
# <md>          :secret => 'false'
default['httpd']['ssl']['sslproxycarevocationfile'] = ""

#-------------------------------------------------------------------------------
# vhost configuration
#-------------------------------------------------------------------------------

# <md>attribute 'httpd/vhosts_enabled',
# <md>          :displayname =>  'VhostEnabled',
# <md>          :description => 'Vhost enabled',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'true',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'
default['httpd']['vhosts_enabled'] = 'true'

# <md>attribute 'httpd/virtualhosts/default_http_server/vhost_type',
# <md>          :displayname =>  'DefaultHTTPVhostType',
# <md>          :description => 'name_based or ip_based',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'name_based',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'
# <md>attribute 'httpd/virtualhosts/default_http_server/vhost_listen',
# <md>          :displayname =>  'DefaultHTTPVhostPort',
# <md>          :description => 'Port Vhost listens on',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '80',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'
# <md>attribute 'httpd/virtualhosts/default_http_server/server_name',
# <md>          :displayname =>  'DefaultHTTPVhostServerName',
# <md>          :description => 'Vhost server name for directing requests',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'none',
# <md>          :secret => 'false'
# <md>attribute 'httpd/virtualhosts/default_http_server/document_root',
# <md>          :displayname =>  'DefaultHTTPVhostDocumentRoot',
# <md>          :description => 'Vhost document root',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'none',
# <md>          :secret => 'false'
# <md>attribute 'httpd/virtualhosts/default_http_server/log_dir',
# <md>          :displayname =>  'DefaultHTTPVhostLogDir',
# <md>          :description => 'Vhost log dir',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'none',
# <md>          :secret => 'false'
# <md>attribute 'httpd/virtualhosts/default_http_server/error_log',
# <md>          :displayname =>  'DefaultHTTPVhostErrorLogDir',
# <md>          :description => 'Vhost error log dir',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'none',
# <md>          :secret => 'false'
# <md>attribute 'httpd/virtualhosts/default_http_server/custom_log',
# <md>          :displayname =>  'DefaultHTTPVhostCustomLogDir',
# <md>          :description => 'Vhost custom log dir',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'none',
# <md>          :secret => 'false'
# <md>attribute 'httpd/virtualhosts/default_http_server/custom_log_format',
# <md>          :displayname =>  'DefaultHTTPVhostCustomLogFormat',
# <md>          :description => 'Vhost custom log format',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'combined',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'none',
# <md>          :secret => 'false'
# <md>attribute 'httpd/virtualhosts/default_http_server/server_admin',
# <md>          :displayname =>  'DefaultHTTPVhostServerAdmin',
# <md>          :description => 'Vhost Server admin',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'none',
# <md>          :secret => 'false'
# <md>attribute 'httpd/virtualhosts/default_http_server/ssl_enabled',
# <md>          :displayname =>  'DefaultHTTPVhostSSLEnabled',
# <md>          :description => 'SSL Enabled for Virtual Host',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'false',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'
# <md>attribute 'httpd/virtualhosts/default_http_server/global_ssl_config',
# <md>          :displayname =>  'DefaultHTTPGlobalSSLConfig',
# <md>          :description => 'Global SSL configuration',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'true',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'
default['httpd']['virtualhosts']= {
  'default_http_server' => {
    # <> Vhost type - name_based or ip_based
    'vhost_type' => 'name_based',
    # <> Vhost port
    'vhost_listen' => node['httpd']['listen'],
    # <> Vhost server name
    'server_name' => "vhost_1.#{node['fqdn']}",
    # <> Vhost document root
    'document_root' => "#{node['httpd']['httpd_home']}/vhost_http.#{node['fqdn']}",
    # <> Vhost log dir
    'log_dir' => node['httpd']['log_dir'],
    # <> Vhost error log
    'error_log' => "vhost_1.#{node['fqdn']}_error_log",
    # <> Vhost custom log
    'custom_log' => "vhost_1.#{node['fqdn']}_custom_log",
    # <> Vhost custom log format
    'custom_log_format' => 'combined',
    # <> Vhost Server admin
    'server_admin' => node['httpd']['server_admin'],
    # <> SSL Enabled for Virtual Host
    'ssl_enabled' => 'false',
    # <> Global SSL configuration
    'global_ssl_config' => 'true'
  },

  # <md>attribute 'httpd/virtualhosts/default_https_server/vhost_type',
  # <md>          :displayname =>  'DefaultHTTPSVhostType',
  # <md>          :description => 'name_based or ip_based',
  # <md>          :type => 'string',
  # <md>          :required => 'recommended',
  # <md>          :default => 'name_based',
  # <md>          :selectable => 'false',
  # <md>          :precedence_level => 'node',
  # <md>          :parm_type => 'node',
  # <md>          :secret => 'false'
  # <md>attribute 'httpd/virtualhosts/default_https_server/vhost_listen',
  # <md>          :displayname =>  'DefaultHTTPSVhostPort',
  # <md>          :description => 'Port Vhost listens on',
  # <md>          :type => 'string',
  # <md>          :required => 'recommended',
  # <md>          :default => '443',
  # <md>          :selectable => 'false',
  # <md>          :precedence_level => 'node',
  # <md>          :parm_type => 'node',
  # <md>          :secret => 'false'
  # <md>attribute 'httpd/virtualhosts/default_https_server/server_name',
  # <md>          :displayname =>  'DefaultHTTPSVhostServerName',
  # <md>          :description => 'Vhost server name for directing requests',
  # <md>          :type => 'string',
  # <md>          :required => 'recommended',
  # <md>          :default => '',
  # <md>          :selectable => 'false',
  # <md>          :precedence_level => 'node',
  # <md>          :parm_type => 'none',
  # <md>          :secret => 'false'
  # <md>attribute 'httpd/virtualhosts/default_https_server/document_root',
  # <md>          :displayname =>  'DefaultHTTPSVhostDocumentRoot',
  # <md>          :description => 'Vhost document root',
  # <md>          :type => 'string',
  # <md>          :required => 'recommended',
  # <md>          :default => '',
  # <md>          :selectable => 'false',
  # <md>          :precedence_level => 'node',
  # <md>          :parm_type => 'none',
  # <md>          :secret => 'false'
  # <md>attribute 'httpd/virtualhosts/default_https_server/log_dir',
  # <md>          :displayname =>  'DefaultHTTPSVhostLogDir',
  # <md>          :description => 'Vhost log dir',
  # <md>          :type => 'string',
  # <md>          :required => 'recommended',
  # <md>          :default => '',
  # <md>          :selectable => 'false',
  # <md>          :precedence_level => 'node',
  # <md>          :parm_type => 'none',
  # <md>          :secret => 'false'
  # <md>attribute 'httpd/virtualhosts/default_https_server/error_log',
  # <md>          :displayname =>  'DefaultHTTPSVhostErrorLogDir',
  # <md>          :description => 'Vhost error log dir',
  # <md>          :type => 'string',
  # <md>          :required => 'recommended',
  # <md>          :default => '',
  # <md>          :selectable => 'false',
  # <md>          :precedence_level => 'node',
  # <md>          :parm_type => 'none',
  # <md>          :secret => 'false'
  # <md>attribute 'httpd/virtualhosts/default_https_server/custom_log',
  # <md>          :displayname =>  'DefaultHTTPSVhostCustomLogDir',
  # <md>          :description => 'Vhost custom log dir',
  # <md>          :type => 'string',
  # <md>          :required => 'recommended',
  # <md>          :default => '',
  # <md>          :selectable => 'false',
  # <md>          :precedence_level => 'node',
  # <md>          :parm_type => 'none',
  # <md>          :secret => 'false'
  # <md>attribute 'httpd/virtualhosts/default_https_server/custom_log_format',
  # <md>          :displayname =>  'DefaultHTTPSVhostCustomLogFormat',
  # <md>          :description => 'Vhost custom log format',
  # <md>          :type => 'string',
  # <md>          :required => 'recommended',
  # <md>          :default => 'combined',
  # <md>          :selectable => 'false',
  # <md>          :precedence_level => 'node',
  # <md>          :parm_type => 'none',
  # <md>          :secret => 'false'
  # <md>attribute 'httpd/virtualhosts/default_https_server/server_admin',
  # <md>          :displayname =>  'DefaultHTTPSVhostServerAdmin',
  # <md>          :description => 'Vhost Server admin',
  # <md>          :type => 'string',
  # <md>          :required => 'recommended',
  # <md>          :default => '',
  # <md>          :selectable => 'false',
  # <md>          :precedence_level => 'node',
  # <md>          :parm_type => 'none',
  # <md>          :secret => 'false'
  # <md>attribute 'httpd/virtualhosts/default_https_server/ssl_enabled',
  # <md>          :displayname =>  'DefaultHTTPSSSLEnabled',
  # <md>          :description => 'SSL Enabled for Virtual Host',
  # <md>          :type => 'string',
  # <md>          :required => 'recommended',
  # <md>          :default => 'true',
  # <md>          :selectable => 'false',
  # <md>          :precedence_level => 'node',
  # <md>          :parm_type => 'node',
  # <md>          :secret => 'false'
  # <md>attribute 'httpd/virtualhosts/default_https_server/global_ssl_config',
  # <md>          :displayname =>  'DefaultHTTPSGlobalSSLConfig',
  # <md>          :description => 'Global SSL configuration',
  # <md>          :type => 'string',
  # <md>          :required => 'recommended',
  # <md>          :default => 'true',
  # <md>          :selectable => 'false',
  # <md>          :precedence_level => 'node',
  # <md>          :parm_type => 'node',
  # <md>          :secret => 'false'
  'default_https_server' => {
    # <> Vhost type - name_based or ip_based
    'vhost_type' => 'name_based',
    # <> Vhost port
    'vhost_listen' => '443',
    # <> Vhost server name
    'server_name' => "vhost_2.#{node['fqdn']}",
    # <> Vhost document root
    'document_root' => "#{node['httpd']['httpd_home']}/vhost_https.#{node['fqdn']}",
    # <> Vhost log dir
    'log_dir' => "#{node['httpd']['log_dir']}/",
    # <> Vhost error log
    'error_log' => "vhost_2.#{node['fqdn']}_error_log",
    # <> Vhost custom log
    'custom_log' => "vhost_2.#{node['fqdn']}_custom_log",
    # <> Vhost custom log format
    'custom_log_format' => 'combined',
    # <> Vhost Server admin
    'server_admin' => node['httpd']['server_admin'],
    # <> SSL Enabled for Virtual Host
    'ssl_enabled' => 'true',
    # <> Global SSL configuration
    'global_ssl_config' => 'true'

  }
}
# <md>attribute 'httpd/proxy',
# <md>          :displayname =>  'Global proxy settings',
# <md>          :description => 'Global proxy settings configuration',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'true',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'none',
# <md>          :secret => 'false'
default['httpd']['proxy'] = ''

# <> The path on the repo server for each distribution
case node['platform_family']
when 'rhel'
  # <> An absolute path to a directory that will be used to hold any temporary files created as part of the automation
  default['ibm']['temp_dir'] = '/tmp/ibm_cloud'
  # <> An absolute path to a directory that will be used to hold any persistent files created as part of the automation
  default['ibm']['log_dir'] = '/var/log/ibm_cloud'
  # <> A temporary directory used for the extraction of installation files
  default['ibm']['expand_area'] = node['ibm']['temp_dir'] + '/expand_area'
  # <> The directory where the installation logs and artifacts are stored
  default['ibm']['evidence_path']['unix'] = "#{node['ibm']['log_dir']}/evidence"
  # <> RHEL 7 tarball file
  # <md>attribute 'httpd/tarball',
  # <md>          :displayname =>  'RHEL tarball file',
  # <md>          :description => 'RHEL tarball file'',
  # <md>          :type => 'string',
  # <md>          :required => 'recommended',
  # <md>          :default => 'httpd24-25.el7.x86_64.tar.gz',
  # <md>          :selectable => 'false',
  # <md>          :precedence_level => 'node',
  # <md>          :parm_type => 'node',
  # <md>          :secret => 'false'
  default['httpd']['tarball'] = 'httpd24-25.el7.x86_64.tar.gz'
when 'windows'
  # <> An absolute path to a directory that will be used to hold any temporary files created as part of the automation
  default['ibm']['temp_dir'] = 'C:\\temp\\ibm_cloud'
  # <> An absolute path to a directory that will be used to hold any persistent files created as part of the automation
  default['ibm']['log_dir'] = 'C:\\temp\\ibm_cloud\\log'
  # <> A temporary directory used for the extraction of installation files
  default['ibm']['expand_area'] = node['ibm']['temp_dir'] + '\\expand_area'
end

#-------------------------------------------------------------------------------
# Vault parameters
#-------------------------------------------------------------------------------

# <>  The stack id
default['ibm_internal']['stack_id'] = ''

# <>  The stack name
default['ibm_internal']['stack_name'] = ''

# <>  List of roles on the node
default['ibm_internal']['roles'] = ''

# <>  The vault name for this stack
default['ibm_internal']['vault']['name'] = ''

# <>  The vault item which will contain the secrets
default['ibm_internal']['vault']['item'] = ''

#-------------------------------------------------------------------------------
# Secure repo parameters
#-------------------------------------------------------------------------------

# <> self signed certificate
default['ibm']['sw_repo_self_signed_cert'] = 'false'

# <> The URL to the root directory of the HTTP server hosting the software installation packages i.e. http://<hostname>:<port>
default['ibm']['sw_repo_root'] = ''

# <> IBM sw_repo_user
default['ibm']['repo_user'] = ''

# <> IBM sw_repo_pass
default['ibm']['repo_password'] = ''

# <> Installation binaries/archives/sources and details
# <md>attribute 'httpd/archive_names/httpd/binary',
# <md>          :displayname =>  'HTTP Server binary',
# <md>          :description => 'HTTP Server binary',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'httpd-2.4.25-1.x86_64.rpm',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'
# <md>attribute 'httpd/archive_names/httpd-tools/binary',
# <md>          :displayname =>  'HTTP Server httpd-tools binary',
# <md>          :description => 'HTTP Server httpd-tools binary',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'httpd-tools-2.4.25-1.x86_64.rpm',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'
# <md>attribute 'httpd/archive_names/mod_ssl/binary',
# <md>          :displayname =>  'HTTP Server mod_ssl binary',
# <md>          :description => 'HTTP Server mod_ssl binary',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'mod_ssl-2.4.25-1.x86_64.rpm',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'
# <md>attribute 'httpd/archive_names/apr/binary',
# <md>          :displayname =>  'HTTP Server apr binary',
# <md>          :description => 'HTTP Server apr binary',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'apr-1.5.2-1.x86_64.rpm',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'
# <md>attribute 'httpd/archive_names/apr-devel/binary',
# <md>          :displayname =>  'HTTP Server apr-devel binary',
# <md>          :description => 'HTTP Server apr-devel binary',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'apr-devel-1.5.2-1.x86_64.rpm',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'
# <md>attribute 'httpd/archive_names/apr-util/binary',
# <md>          :displayname =>  'HTTP Server apr util binary',
# <md>          :description => 'HTTP Server apr util binary',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'apr-util-1.5.4-1.x86_64.rpm',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'
# <md>attribute 'httpd/archive_names/mod.proxy/binary',
# <md>          :displayname =>  'HTTP Server mod_proxy binary',
# <md>          :description => 'HTTP Server mod_proxy binary',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'mod_proxy_html-2.4.25-1.x86_64.rpm',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'
default['httpd']['archive_names'] = {
  'httpd' => {
    'version' => '2.4*',
    'binary' => 'httpd-2.4.25-1.x86_64.rpm'
  },
  'httpd-tools' => {
    'version' => '2.4*',
    'binary' => 'httpd-tools-2.4.25-1.x86_64.rpm'
  },
  'mod_ssl' => {
    'version' => '2.4*',
    'binary' => 'mod_ssl-2.4.25-1.x86_64.rpm'
  },
  'apr' => {
    'version' => '',
    'binary' => 'apr-1.5.2-1.x86_64.rpm'
  },
  'apr-devel' => {
    'version' => '',
    'binary' => 'apr-devel-1.5.2-1.x86_64.rpm'
  },
  'apr-util' => {
    'version' => '',
    'binary' => 'apr-util-1.5.4-1.x86_64.rpm'
  },
  'mod.proxy' => {
    'version' => '',
    'binary' => 'mod_proxy_html-2.4.25-1.x86_64.rpm'
  }
}
