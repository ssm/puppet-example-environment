require 'spec_helper'

describe 'profile::base' do
  include_context :test_environment
  it { should contain_class('profile::base') }
end
