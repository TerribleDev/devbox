class ubuntuDesktop {
	$UbuntuDesktop = ['gdm', 'ubuntu-desktop']
  

  package { $UbuntuDesktop : 
  ensure => "installed",
  require => Exec['apt-get update']
  }
}