case node['platform_family']
  when 'debian'
    include_recipe 'apt'

    package 'apt-transport-https'

    apt_repository 'node.js' do
      uri node['opscore']['nodejs']['repo']
      distribution node['lsb']['codename']
      components ['main']
      keyserver node['opscore']['nodejs']['keyserver']
      key node['opscore']['nodejs']['key']
    end
  when 'rhel'
    include_recipe 'yum-epel'
end