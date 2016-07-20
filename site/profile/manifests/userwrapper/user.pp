define profile::userwrapper::user (
  $key,
) {

  include ::profile::userwrapper

  File { owner => $name, group => $name }

  $homedir = "/home/${name}"
  $home_source = "puppet:///modules/profile/userdirs/${name}"

  user { $name:
    ensure     => present,
    home       => $homedir,
    managehome => false,
  } ->

  file { "/var/users/${name}":
    ensure  => present,
    replace => false,
    content => "${name}",
    require => File['/var/users'],
  } ->

  file { $homedir:
    ensure  => directory,
    recurse => remote,
    source  => [ $home_source, 'puppet:///modules/profile/userdir_default' ],
  } ->

  ssh_authorized_key { "${name}@${name}":
    ensure  => present,
    key     => $key,
    type    => 'ssh-rsa',
    user    => $name,
    require => File[$homedir],
  }
}
