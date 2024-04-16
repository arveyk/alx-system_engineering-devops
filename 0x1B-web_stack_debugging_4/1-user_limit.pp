user { 'holberton':
  ensure     => 'present',
  comment    => 'Holberton',
  home       => '/var/home/holberton',
  managehome => true,
  shell      => '/bin/bash',
}
