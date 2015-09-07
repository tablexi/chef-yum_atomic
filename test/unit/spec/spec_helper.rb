require 'rspec/expectations'
require 'chefspec'
require 'chefspec/berkshelf'

::LOG_LEVEL = :fatal
::CENTOS_OPTS = {
  :platform => 'centos',
  :version => '6.6',
  :log_level => ::LOG_LEVEL
}
::CHEFSPEC_OPTS = {
  :log_level => ::LOG_LEVEL
}

at_exit { ChefSpec::Coverage.report! }
