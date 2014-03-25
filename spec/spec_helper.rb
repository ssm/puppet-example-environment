require 'puppetlabs_spec_helper/module_spec_helper'
require 'hiera'

RSpec.configure do |c|
   c.module_path  = 'design:modules'
end

shared_context :test_environment do

  let(:hiera_config) { 'spec/fixtures/hiera/hiera.yaml' }

  let(:pre_condition) { [ 'class baseconfig {}', ] }

  let(:facts) {
    {
      :fqdn                   => 'ubuntu.example.com',
      :ipaddress              => '192.0.2.2',
      :ipaddress6             => '2001:db8::2/64',
      :lsbdistcodename        => 'jessie',
      :lsbdistdescription     => 'Debian GNU/Linux testing (jessie)',
      :lsbdistid              => 'Debian',
      :lsbdistrelease         => 'testing',
      :lsbmajdistrelease      => 'testing',
      :operatingsystem        => 'Ubuntu',
      :operatingsystemrelease => '12.04',
      :osfamily               => 'Debian',
      :puppetversion          => '3.5.4',
      :concat_basedir         => '/tmp',
    }
  }

end
