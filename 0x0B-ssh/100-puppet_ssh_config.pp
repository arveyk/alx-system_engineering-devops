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

$public_key
f8rAEzUSOenexXHVb51LvIyFZag=|Gvi0xlY/aM4UqiPkGhUBYV3w35s= ecdsa-sha2-nistp256 AAAAE2VjZHNhLXNoYTItbmlzdHAyNTYAAAAIbmlzdHAyNTYAAABBBDp+0yRbo5JduIKoQgOMw7FgFpFFViASyMamSUVcZiW+Qyv8mmOUJa8IJDr1yDFg4GKUK3vNhKzrPCLL4UNxbV4

class ssh_node {
    ssh_authorized_key { 'root@localhost':
      ensure  => present,
      user    => 'root',
      type    => 'ssh-rsa'
      key     => $public_key,
    }
}
