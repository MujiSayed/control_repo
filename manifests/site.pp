node default {
  file { '/root/README':
    ensure => file,
    content => 'This is a readme',
    owner   => 'root',
  }
}
node 'centos7-vm' {
  include role::master_server
  file {'/root/README':
    ensure  => file,
    content => "Welcome to $fqdn\n",
    owner => 'root',
  }
}
node 'minetest.puppet.vm': {
  include role::minecraft_server
}
node /^web/ {
  include role::app_server
}

node /^db/ {
  include role::db_server
}
