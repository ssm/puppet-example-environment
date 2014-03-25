# This profile implements a running webserver, using "apache httpd"
class profile::webserver {
  include apache

  file { '/srv/www':
    ensure  => directory,
    recurse => true,
    purge   => true,
  }

  apache::vhost { 'example.com':
    docroot => '/srv/www/example.com',
  }
}
