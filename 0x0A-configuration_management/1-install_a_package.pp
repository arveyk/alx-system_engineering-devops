# Puppet Package installer
package { 'flask':
    command  => 'apt-install flask==2.1.0',
    ensure   => 'installed',
    provider => 'pip3',
}

