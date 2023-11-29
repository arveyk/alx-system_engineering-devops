# Puppet Package installer
package { 'flask':
    ensure   => '2.1.0',
    command  => 'pip install flask',
    provider => 'pip3',
}

