name 'yum-atomic'
maintainer 'Brian Hays'
maintainer_email 'brian.hays@gmail.com'
license 'Apache-2.0'
description 'Installs/Configures yum-atomic repo'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '0.2.0'

supports 'centos'
supports 'redhat'
supports 'scientific'
supports 'fedora'

depends 'compat_resource', '>= 12.14.6'
depends 'yum-epel'

source_url       'https://github.com/brianhays/yum-atomic'
issues_url       'https://github.com/brianhays/yum-atomic/issues'
chef_version '>= 12.1' if respond_to?(:chef_version)
