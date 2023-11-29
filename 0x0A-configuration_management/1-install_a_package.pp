# Puppet Package installer
exec { 'flask'
    command  => 'sudo apt-install flask==2.1.0'
}

