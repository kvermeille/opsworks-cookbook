node['opscore']['nodejs']['npm_packages'].each do |pkg|
  f = opscore_npm pkg['name'] do
    action :nothing
  end
  pkg.each do |key, value|
    f.send(key, value) unless key == 'name' || key == 'action'
  end
  action = pkg.key?('action') ? pkg['action'] : :install
  f.action(action)
end if node['opscore']['nodejs'].key?('npm_packages')