class devPackages {
	$Packages = ['cowsay', 'ruby', 'rubygems', 'nodejs', 'irssi', 'git']
  

  package { $Packages: 
  ensure => "installed",
  require => Exec['apt-get update']
  }
}