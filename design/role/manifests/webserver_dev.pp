# This represents the business requirements "web server development
# environment".
#
# It contains the same as "role::webserver", but without the "base" profile.
# This is suitable for provisioning on a vagrant instance.
#
class role::webserver_dev {
    include profile::webserver
}
