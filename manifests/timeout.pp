# == Class: bash::timeout
#
# === Copyright
#
# Copyright 2015 North Development AB
#

define bash::timeout (
  $user      = $name,
  $user_home = "/home/$name",
  $timeout   = 0,
){
  file {"$user_home/.bash_profile":
    ensure   => present,
    replace  => 'no',
    content  => '',
    owner    => $user
  }

  file_line { "$user_home/.bash_profile":
    ensure  => present,
    match   => 'export TMOUT',
    line    => "export TMOUT=$timeout",
    require => File["$user_home/.bash_profile"],
    path    => "$user_home/.bash_profile"
  }
}
