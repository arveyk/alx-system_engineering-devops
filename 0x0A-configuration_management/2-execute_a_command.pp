# Manifest that kills the killmenow process
exec { 'killmenow':
    command  => 'pkill killmenow',
    provider => shell,
}
