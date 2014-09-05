file { "/home/$::id/my_aliases.sh" :
  content => $::bash_aliases,
  ensure => present,
}
