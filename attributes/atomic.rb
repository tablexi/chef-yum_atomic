default['yum']['atomic']['repositoryid'] = 'atomic'
default['yum']['atomic']['gpgkey'] = %w(https://www.atomicorp.com/RPM-GPG-KEY.art.txt https://www.atomicorp.com/RPM-GPG-KEY.atomicorp.txt)
default['yum']['atomic']['gpgcheck'] = true
default['yum']['atomic']['enabled'] = true
default['yum']['atomic']['managed'] = true

case node['platform']
when 'fedora'
  default['yum']['atomic']['mirrorlist'] = 'http://updates.atomicorp.com/channels/mirrorlist/atomic/fedora-$releasever-$basearch'
  default['yum']['atomic']['description'] = 'Fedora Core $releasever - atomicrocketturtle.com'
when 'redhat', 'centos'
  default['yum']['atomic']['mirrorlist'] = 'http://updates.atomicorp.com/channels/mirrorlist/atomic/centos-$releasever-$basearch'
  default['yum']['atomic']['description'] = 'CentOS / Red Hat Enterprise Linux $releasever - atomicrocketturtle.com'
else
  fail "Unsupported platform #{node['platform']}. Please review the cookbook requirements."
end
