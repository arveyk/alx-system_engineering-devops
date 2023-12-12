# Puppet Package installer
exec { 'pip3 install flask==2.1.0':
    provider => shell,
}
