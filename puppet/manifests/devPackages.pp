class devPackages {
	$Packages = ['cowsay', 'ruby', 'rubygems', 'nodejs', 'irssi', 'git', 'golang']
  

  package { $Packages: 
  ensure => "installed",
  require => Exec['apt-get update']
  }
}