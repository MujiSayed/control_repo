node default {
  file {'/root/README':
    ensure  => file,
    content => 'This is a readme2',
    owner   => 'root',
  }
  file {'/root/README':
    owner => 'root;,
}
