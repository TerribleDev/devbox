include apt
class monoDevelop {  

	apt::ppa {"ppa:ermshiperete/monodevelop":} -> Exec['apt-get update'] -> package { "monoDevelop" : 
  name=>"monodevelop-current",
  ensure => "installed"
  }
}