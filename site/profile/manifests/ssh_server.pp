class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@centos7-vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDCeYKyArmtlhTzh/W37haebh8OItHMMiZ6s3pzrB7vuAalVVA5XMBB2PIZXuFS9lu/LETHA98v+CWk3hytvOfpNbtOoAYvt53vEqhEQBcIUtdhYiQOywIw9zbmNl9ZaVHg/KgcFew4YHSH4R7CoVicnNpUvA+4jusgJwozKkked0I9a69u/kvUivwNxDdF13UgkdZOBOk3ne9tzZ5qr3bGIpsBgLzvtkPqbMKT9CmZuaDzGbfYzPLiPZwq4dRFhPHzFh7uHE8TjqeJXkmVTmuoS66zla0JcP2CUBa028zWWcct7v7lhhDVCU69JQRjfCIxqa6zLUpcqZf3rcElJSOZ',
	}  
}
