describe yum.repo('atomic') do
  it { should exist }
  it { should be_enabled }
end

describe file('/etc/yum.repos.d/atomic.repo') do
  its('content') { should include('updates.atomicorp.com/channels/mirrorlist/atomic') }
end
