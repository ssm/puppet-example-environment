This repository is for the puppet environments "example_*", an example puppet
environment with multiple uses:

* A source for "r10k", when deploying this on a live puppet master

* Unit tests using "rspec-puppet"

* Acceptance tests using "serverspec" and "vagrant"

Usage
=====

Run "rake serverspec" to provision a vagrant instance, install the
"role::webserver" role in this environment, and run "serverspec" to check the
result.

Dependencies
============

This example uses "rspec-puppet" for unit tests, "serverspec" for acceptance
tests, and "vagrant" for a virtual server deployment. By default, "vagrant"
uses "virtualbox" from Oracle, but there are vmware and lxc backends available.
Installing these is outside the scope of this example.

1.1 On Debian
-------------

    apt-get install ruby-rspec-puppet ruby-serverspec vagrant virtualbox

1.2 On other operating systems
------------------------------

    gem install rspec-puppet
    gem install serverspec

Get "vagrant" for your operating system from http://www.vagrantup.com/ and
install it

Get "Virtualbox" for your operating system from https://www.virtualbox.org/ and
install it.

2. Install a vagrant box
------------------------

serverspec/Vagrantfile needs a box named "default".  Choose any operating
system, as long as it is supported by the modules used in this environment.

    vagrant box add --name default \
    http://cloud-images.ubuntu.com/vagrant/precise/current/precise-server-cloudimg-amd64-vagrant-disk1.box

This installs a box named "default", from an ubuntu cloud image source. For
other operating systems, make your own box, or find one at
http://www.vagrantbox.es/
