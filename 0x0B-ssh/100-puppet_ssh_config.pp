# Manifest to modify the local config file
ssh::server::include: /etc/ssh/school
ssh::server::config_files:
  'school':
    lines:
      Include: '~/.ssh/school'
      SyslogFacility: 'AUTHPRIV'
      ChallengeResponseAuthentication: 'no'
      GSSAPIAuthentication: 'yes'
      GSSAPICleanupCredentials: 'no'
      UsePAM: 'yes'
      PrintMotd: 'no'
