# Puppet Package installer
$your_version = '2.1.0'
package { 'pip install flask':
    ensure   => '2.1.0',
    provider => pip3,
}
exec { "pip3 install --force-reinstall 'flask==2.1.0'":
    path     => '/usr/bin:/usr/sbin:/bin',
    provider => shell,
    onlyif => "flask - | grep 'Version ${your_version}'"
}
