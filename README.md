This repository is for the puppet environments "example_*", an example puppet
environment with multiple uses:

* A source for "r10k", when deploying this on a live puppet master

* Unit tests using "rspec-puppet"

* Acceptance tests using "serverspec" and "vagrant"

Dependencies
============

This example uses "rspec-puppet" for unit tests, "serverspec" for acceptance
tests, and "vagrant" for a virtual server deployment. By default, "vagrant"
uses "virtualbox" from Oracle, but there are vmware and lxc backends available.
Installing these is outside the scope of this example.

On Debian
---------

    apt-get install ruby-rspec-puppet ruby-serverspec vagrant virtualbox

On other operating systems
--------------------------

    gem install rspec-puppet
    gem install serverspec

Get "vagrant" for your operating system from http://www.vagrantup.com/ and
install it

Get "Virtualbox" for your operating system from https://www.virtualbox.org/ and
install it.
