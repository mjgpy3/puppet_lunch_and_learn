file { '/home/USER_NAME/my_aliases.sh' :
  content => $::bash_aliases,
  ensure => present,
}
