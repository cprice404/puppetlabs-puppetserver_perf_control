class profile::userwrapper {
  file { '/var/users':
    ensure => directory,
    owner  => 'root',
    group  => '0',
    mode   => '0700',
  }
}