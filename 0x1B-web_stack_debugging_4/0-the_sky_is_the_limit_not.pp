exec {'cp':
	command => ['/bin/cp', '/lib/systemd/system/nginx.service /etc/systemd/system/']
}
exec {'sed':
	command => ['/bin/sed', '/KillMode/a LimitNOFILE=500000 /etc/systemd/system/nginx.service']
}
