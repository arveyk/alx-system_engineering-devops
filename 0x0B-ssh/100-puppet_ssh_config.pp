# Manifest to modify the local config file
#ssh::server::include: /etc/ssh/school
#ssh::server::config_files:
#  'school':
#    lines:
#      Include: '~/.ssh/school'
#      SyslogFacility: 'AUTHPRIV'
#      ChallengeResponseAuthentication: 'no'
#      GSSAPIAuthentication: 'yes'
#      GSSAPICleanupCredentials: 'no'
#      UsePAM: 'yes'
#      PrintMotd: 'no'

#class ssh {
#    file { '~/.ssh/school':
#      ensure => present,
#      owner  => 'root',
#      group  => 'root',
#      source => "puppet:///modules/.ssh/school.${operatingsystem}",
#    }
#}

class { '::ssh::client':
    options => {
      'Host *' => {
        'SendEnv'                   => 'LANG LC_*',
        'HashKnownHosts'            => 'yes',
        'GSSAPIAuthentication'      => 'yes',
        'GSSAPIDelegateCredentials' => 'no',
        'HostbasedAuthentication'   => 'yes',
        'EnableSSHKeysign'          => 'yes',
      },
    },
}

exec {'shost.equiv':
    command => 'cat /etc/ssh/ssh_known_hosts | grep -v "^#" | awk \'{print $1}\' | sed -e \'s/,/\n/g\' > /etc/ssh/shosts.equiv',
    require => Class['ssh::knownhosts'],
}
