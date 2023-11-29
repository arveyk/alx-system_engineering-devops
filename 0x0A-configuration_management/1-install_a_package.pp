# Puppet Package installer
package { 'flask'
    ensure   => '2.1.0'
    ensure   => 'installed'
    provider => 'pip3'
}

