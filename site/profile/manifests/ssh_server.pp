class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQC2RGbmJuuWLiMoGCsziUgnLi4MFwUnl2Xt1S3pphUZHbqS/qb+3epTgx6xuDj1lI9oC1xDAaLzsrM/Ytu0cUojd3442KM3J/98qmrpUh8NzXabgAOimzl5SPhM0SNVZdLdbj1mr6JKQ8ukaYgWwRpBesJmYv5zpvZkycdVWk6P7DBiCkEhIJVffoju/EQNYzzrCkgmYawzbwd2+IKxeSLBc2WAHt1eIIeZnsINwVmqCOqQGhUWPbsa5oN0INT0IwOcYPrNBoDG93je3MxbZP9xqXvzYXcrrER/P89BQPtuGlMlcc3TVLZZ7lSULgJuJziWxqHArSR+USCIa1k9N/jJ',
	}  
}
