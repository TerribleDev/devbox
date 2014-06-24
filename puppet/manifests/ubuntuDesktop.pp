class ubuntuDesktop {
	$UbuntuDesktop = ['gdm', 'ubuntu-desktop', 'virtualbox-guest-dkms', 'virtualbox-guest-utils', 'virtualbox-guest-x11' ]
  

  package { $UbuntuDesktop : 
  ensure => "installed",
  require => Exec['apt-get update']
  }
}