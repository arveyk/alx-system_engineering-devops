# Puppet Package installer
package { 'flask':
    ensure   => 'installed',
    command  => 'apt-install flask==2.1.0',
    provider => 'pip3',
}

