# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.host_name = "www.local"
  config.vm.box = "default"

  # Provisioning using the puppet environment
  config.vm.provision "puppet" do |puppet|
    puppet.manifest_file = "vagrant.pp"
    puppet.module_path    = ['design', 'modules']
  end

end
