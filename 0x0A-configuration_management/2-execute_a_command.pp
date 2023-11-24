exec { '':
    command  => 'pkill killmenow',
    provider => shell,
}
