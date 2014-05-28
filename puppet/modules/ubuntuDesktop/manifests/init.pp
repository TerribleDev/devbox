class ubuntuDesktop {
	$UbuntuDesktop = ['gdm', 'ubuntu-desktop']
  

  package { "UbuntuDesktopPackages" : 
  name=>$UbuntuDesktop,
  ensure => "installed"
  }
}