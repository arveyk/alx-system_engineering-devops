# Puppet Package installer
exec { 'flask'
    command  => 'apt-install flask'
    ensure   => '2.1.0'
    provider => 'pip3'
}

