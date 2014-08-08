class devPackages {
	$Packages = ['cowsay', 'nodejs', 'npm', 'nginx', 'irssi', 'git', 'golang', 'tmux', 'geany', 'rubygems' ]
  

  package { $Packages: 
  ensure => "installed",
  require => Exec['apt-get update']
  }
}
