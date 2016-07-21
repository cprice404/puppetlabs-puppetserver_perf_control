# This is based on profile::sysop in puppetlabs-modules, to help us get our
#  catalog's package count up closer to what it would be in an ops catalog.
class profile::sysop::packages {
  include ::epel

  package { 'rsync': ensure => latest; }
  package { 'htop': ensure => latest, require => Yumrepo[epel]; }
  package { 'screen': ensure => latest; }
  package { 'tmux': ensure => latest; }
  package { 'tcpdump': ensure => latest; }
  package { 'nmap': ensure => latest; }
  package { 'strace': ensure => latest; }
  package { 'lsof': ensure => latest; }
  package { 'iotop': ensure => latest; }
  package { 'iftop': ensure => latest, require => Yumrepo[epel]; }
  package { 'dstat': ensure => latest; }
  package { 'mlocate': ensure => latest; }
  package { 'unzip': ensure => latest; }
  package { 'wget': ensure => latest; }
  package { 'ack': ensure => latest, require => Yumrepo[epel]; }
  package { 'bind-utils': ensure => latest; }
  package { 'vim-minimal': ensure => latest; }
  package { 'vim-common': ensure => latest; }
  package { 'vim-enhanced': ensure => latest; }
  package { 'curl': ensure => latest; }
  package { 'xz': ensure => latest; }
  package { 'bash': ensure => latest; }
  package { 'bash-completion': ensure => latest; }
  package { 'zsh': ensure => latest; }

  ## from here down are just random packages that I saw in the ops catalog

#  package {'cronie': ensure => latest; }
  include ::profile::sysop::packages::cronie

  package {'crontabs': ensure => latest; }
  package {'ca-certificates': ensure => latest; }
  package {'yum-utils': ensure => latest; }
  package {'redhat-lsb': ensure => latest; }
  package {'openssl': ensure => latest; }
  package {'python-virtualenv': ensure => latest; }
  package {'python-pip': ensure => latest; }
  package {'python-devel': ensure => latest; }
  package {'python': ensure => latest; }
  package {'ruby': ensure => latest; }
  package {'rubygems': ensure => latest; }
  package {'puppet-agent': ensure => latest; }
  package {'jq': ensure => latest; }
  package {'dhclient': ensure => latest; }
  package {'postfix': ensure => latest; }
  package {'ntp': ensure => latest; }
  package {'openssh-clients': ensure => latest; }
  package {'openssh-server': ensure => latest; }

}