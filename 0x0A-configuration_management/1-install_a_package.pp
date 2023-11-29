# Puppet Package installer
package { 'flask'
#    command  => 'apt-install flask'   
    ensure   => '2.1.0'
    provider => 'pip3'
#    install_options => ['']
}

