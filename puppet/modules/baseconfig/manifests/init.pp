# == Class: baseconfig
#
# Performs initial configuration tasks for all Vagrant boxes.
#
class baseconfig {
  
	exec { 'apt-get update':
    command => '/usr/bin/apt-get update';
  }
  host { 'hostmachine':
  }

  file {
    '/home/vagrant/.bashrc':
      owner => 'vagrant',
      group => 'vagrant',
      mode  => '0644',
      source => 'puppet:///modules/baseconfig/bashrc';
  }
  
  package { "gdm": ensure => "installed"}
  package { "ubuntu-desktop": ensure => "installed"}
  package { "ruby": ensure => "installed"}
  package { "nodejs": ensure => "installed"}
  package { "irssi": ensure => "installed"}
  package { "git": ensure => "installed"}
  package { "tmux": ensure => "installed"}
}