require 'spec_helper'

describe 'profile::webserver' do
  include_context :test_environment

  it { should contain_class('profile::webserver') }

end
