# Puppet Package installer
exec { 'flask'
    command  => 'sudo apt-install flask'
    ensure   => '2.1.0'
}

