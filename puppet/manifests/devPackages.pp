class devPackages {
	$Packages = ['cowsay', 'ruby', 'nodejs', 'irssi', 'git']
  

  package { "DevPackages": 
  name=>$Packages,
  ensure => "installed",
  require => Exec["apt-get update"]
  }
}