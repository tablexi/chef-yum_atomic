require_relative 'spec_helper'

describe 'yum-atomic::default' do
  before do
    Fauxhai.mock(:platform => 'centos', :version => '6.6')
  end

  describe 'centos' do
    let(:chef_run) do
      ChefSpec::SoloRunner.new(
        :platform => 'centos',
        :version => '6.6'
      ) do |node|
        node.normal['yum']['atomic']['managed'] = true
        node.normal['yum']['atomic-testing']['managed'] = true
      end.converge(described_recipe)
    end

    %w(
      atomic
      atomic-testing
    ).each do |repo|
      it "creates yum_repository[#{repo}}]" do
        expect(chef_run).to create_yum_repository(repo)
      end
    end
  end
end
