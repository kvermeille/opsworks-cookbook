include_attribute 'opscore::default'
include_attribute 'opscore::repo'

case node['opscore']['nodejs']['engine']
  when 'node'
    default['opscore']['nodejs']['packages'] = value_for_platform_family(
        'debian' => node['opscore']['nodejs']['install_repo'] ? ['nodejs'] : ['nodejs', 'npm', 'nodejs-dev'],
        ['rhel', 'fedora'] => ['nodejs', 'nodejs-devel', 'npm'],
        'mac_os_x' => ['node'],
        'default' => ['nodejs']
    )
  when 'iojs'
    default['opscore']['nodejs']['packages'] = ['iojs']
end