name 'opscore'

conflicts 'node'
depends 'apt', '= 3.0.0'

%w(debian ubuntu centos redhat smartos mac_os_x).each do |os|
  supports os
end


