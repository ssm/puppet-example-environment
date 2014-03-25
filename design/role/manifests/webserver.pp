# This represents the business requirements "web server".
#
class role::webserver {
    include profile::base
    include profile::webserver
}
