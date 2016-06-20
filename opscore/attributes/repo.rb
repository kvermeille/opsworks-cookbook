case node['opscore']['nodejs']['engine']
  when 'node'
    case node['platform_family']
      when 'debian'
        default['opscore']['nodejs']['install_repo'] = true

        default['opscore']['nodejs']['repo']      = 'https://deb.nodesource.com/node_6.x'
        default['opscore']['nodejs']['keyserver'] = 'keyserver.ubuntu.com'
        default['opscore']['nodejs']['key']       = '1655a0ab68576280'
      when 'rhel'
        default['opscore']['nodejs']['install_repo'] = true
    end
  when 'iojs'
    case node['platform_family']
      when 'debian'
        default['opscore']['nodejs']['install_repo'] = true

        default['opscore']['nodejs']['repo']      = 'https://deb.nodesource.com/iojs_2.x'
        default['opscore']['nodejs']['keyserver'] = 'keyserver.ubuntu.com'
        default['opscore']['nodejs']['key']       = '1655a0ab68576280'
    end
end