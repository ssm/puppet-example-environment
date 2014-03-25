require 'spec_helper'

describe package('apache2') do
  it { should be_installed }
end

describe service('apache2') do
  it { should be_enabled   }
  it { should be_running   }
end

[80, 443].each do |listen_port|
  describe port(listen_port) do
    it { should be_listening }
  end
end

describe file('/etc/apache2/sites-enabled/15-default.conf') do
  it { should be_file }
  it { should contain "ServerName default" }
end
