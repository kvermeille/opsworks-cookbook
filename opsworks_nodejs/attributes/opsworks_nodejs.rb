include_attribute 'deploy'

default[:opsworks_nodejs][:version] = '5.0.0'
default[:opsworks_nodejs][:pkgrelease] = '1'
default[:opsworks_nodejs][:npm_install_options] = 'install --production'

include_attribute "opsworks_nodejs::customize"
