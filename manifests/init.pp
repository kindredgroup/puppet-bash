# == Class: bash
#
# Installs and configured bash.
#
# === Parameters
#
# [*ensure*]
#   Ensurable
#
# [*packages*]
#   Packages to install
#
# === Examples
#
# # Install latest version
# include bash
#
# class { 'bash':
# }
#
# === Copyright
#
# Copyright 2015 North Development AB
#

class bash (
  $packages = ['bash', 'bash-completion'],
  $ensure = installed,
){

  package { $packages: 
    ensure => $ensure,
  }
}
