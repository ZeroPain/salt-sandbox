# == Class: networking
#
# This class configures the hosts file to allow communication between the salt
# master and salt minions using the VirtualBox host-only network.
#
# === Parameters
#
# === Actions
#
# - Install custom hosts template
#
# === Requires
#
# === Sample Usage
#
#   class { 'networking': }
#
class networking {

  file { '/etc/hosts':
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => template('networking/hosts.erb'),
  }

}
