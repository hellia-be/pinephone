class configuration::distcc {
  file { '/etc/makepkg.conf':
    ensure => present,
    source => 'https://raw.githubusercontent.com/hellia-be/pinephone-dotfiles/main/distcc/makepkg.conf',
  }
}
