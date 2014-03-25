Acceptance tests
================

In this directory you can find tools to test a deployment of this
example web server environment on a virtual server.

Tools used
----------

* Vagrant - Spins up virtual server, and runs puppet.

* Serverspec - Logs in to the vagrant instance, and checks for
   expected files, packages, listening ports, etc…

Usage
-----

1. Run "vagrant up" to provision virtual servers.

2. Run "rake spec" to run tests

