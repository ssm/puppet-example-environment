# This profile implements a running webserver, using "apache httpd"
class profile::webserver {
  include apache
  apache::vhost { 'example.com': }
}
