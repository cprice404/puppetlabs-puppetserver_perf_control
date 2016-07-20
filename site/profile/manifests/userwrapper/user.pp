define profile::userwrapper::user (
  $key,
) {

  include ::profile::userwrapper

  $homedir = "/home/${name}"
  $home_source = "puppet:///modules/profile/userdirs/${name}"

  file { "/var/users/${name}":
    ensure  => present,
    replace => false,
    content => "${name}",
    require => File['/var/users'],
  } ->

  user { $name:
    ensure     => present,
    home       => $homedir,
    managehome => false,
  } ->

  file { $homedir:
    ensure  => directory,
    recurse => remote,
    source  => [ $home_source, 'puppet:///modules/site_files/userdir_default' ],
  } ->

  ssh_authorized_key { "${name}@${name}":
    ensure  => present,
    key     => $key,
    type    => 'ssh-rsa',
    user    => $name,
    require => File[$homedir],
  }
}
