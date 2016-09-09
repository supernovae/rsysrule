require 'spec_helper'
describe 'rsysrule' do

  context 'with default values for all parameters' do
    it { should contain_class('rsysrule') }
  end
end
