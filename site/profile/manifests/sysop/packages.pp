# This is based on profile::sysop in puppetlabs-modules, to help us get our
#  catalog's package count up closer to what it would be in an ops catalog.
class profile::sysop::packages {
  include ::epel

  package { 'rsync': ensure => latest; }
  package { 'htop': ensure => latest; }
  package { 'screen': ensure => latest; }
  package { 'tmux': ensure => latest; }
  package { 'tcpdump': ensure => latest; }
  package { 'nmap': ensure => latest; }
  package { 'strace': ensure => latest; }
  package { 'lsof': ensure => latest; }
  package { 'iotop': ensure => latest; }
  package { 'iftop': ensure => latest; }
  package { 'dstat': ensure => latest; }
  package { 'mlocate': ensure => latest; }
  package { 'unzip': ensure => latest; }
  package { 'wget': ensure => latest; }
  package { 'ack': ensure => latest; }
  package { 'bind-utils': ensure => latest; }
  package { 'vim-minimal': ensure => latest; }
  package { 'vim-common': ensure => latest; }
  package { 'vim-enhanced': ensure => latest; }
  package { 'curl': ensure => latest; }
  package { 'xz': ensure => latest; }
  package { 'bash': ensure => latest; }
  package { 'bash-completion': ensure => latest; }
  package { 'zsh': ensure => latest; }

}