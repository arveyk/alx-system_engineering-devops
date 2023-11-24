exec { 'killmenow':
    command  => 'pkill killmenow',
    provider => shell,
}
