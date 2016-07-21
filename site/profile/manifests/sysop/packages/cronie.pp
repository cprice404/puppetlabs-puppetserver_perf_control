class profile::sysop::packages::cronie(
    $package_name = $profile::sysop::packages::cronie::paramspackage_name
) inherits profile::sysop::packages::cronie::params {
  package { $package_name : ensure => latest; }
}