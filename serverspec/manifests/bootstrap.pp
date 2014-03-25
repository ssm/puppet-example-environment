# System packages
class apt {
  exec { 'apt-get update':
    command => '/usr/bin/apt-get update',
    user    => 'root',
  }
}


# Deployment tools
class deployment {

    package { 'librarian-puppet':
        ensure   => installed,
    }

    ->

    exec { 'librarian-puppet update':
        path      => ['/usr/local/bin', '/usr/bin', '/bin'],
        logoutput => true,
        user      => 'root',
    }
}


class { 'apt': } ->
class { 'deployment': }
