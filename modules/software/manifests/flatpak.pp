class software::flatpak {
  package { 'flatpak':
    ensure => installed,
  }
  exec { 'flathub':
    command => '/usr/bin/flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo',
  }
}
