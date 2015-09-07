require_relative 'spec_helper'

describe 'yum atomic repo' do
  describe yumrepo('atomic') do
    it { should exist }
    it { should be_enabled }
  end

  describe file('/etc/yum.repos.d/atomic.repo') do
    it { should contain 'updates.atomicorp.com/channels/mirrorlist/atomic' }
  end
end
