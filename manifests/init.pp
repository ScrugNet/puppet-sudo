# /etc/puppet/modules/sudo/manifests/init.pp

class sudo {

	package { sudo:
		ensure	=> latest
	}

	file { "/etc/sudoers":
		owner	=> "root",
		group	=> "root",
		mode	=> 440,
		source	=> "puppet:///sudo/sudoers",
		require	=> Package["sudo"],
	}
}
