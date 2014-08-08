class devPackages {
	$Packages = ['cowsay', 'nodejs', 'npm', 'nginx', 'irssi', 'git', 'golang', 'tmux', 'geany' ]
  

  package { $Packages: 
  ensure => "installed",
  require => Exec['apt-get update']
  }
}
