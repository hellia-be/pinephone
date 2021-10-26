class software::core {
  package { 'wget':
    ensure => installed,
  }
  package { 'gpsd':
    ensure => installed,
  }
  package { 'danctnix-tweaks':
    ensure => installed,
  }
  package { 'danctnix-tweaks-app':
    ensure => installed,
  }
  package { 'danctnix-tweaks-app-phosh':
    ensure => installed,
  }
  package { 'danctnix-tweaks-app-pinephone':
    ensure => installed,
  }
  package { 'webapp-manager':
    ensure => installed,
  }
  package { 'fractal':
    ensure => installed,
  }
  package { 'numberstation':
    ensure => installed,
  }
  package { 'lastpass-cli':
    ensure => installed,
  }
  package { 'siglo':
    ensure => installed,
  }
  exec { 'puremaps':
    command => '/usr/bin/flatpak install flathub io.github.rinigus.PureMaps',
    creates => '/home/hellia/.var/app/io.github.rinigus.PureMaps',
  }
  package { 'mpv':
    ensure => installed,
  }
  exec { 'spot':
    command => '/usr/bin/flatpak install flathub dev.alextren.Spot',
    creates => '/home/hellia/.var/app/dev.alextren.Spot',
  }
  package { 'vim':
    ensure => installed,
  }
  package { 'firefox':
    ensure => installed,
  }
  package { 'vundle':
    ensure => installed,
  }
  package { 'bash-completion':
    ensure => installed,
  }
  package { 'bash-git-prompt':
    ensure => installed,
  }
  package { 'gnome-software-mobile':
    ensure => absent,
  }
  package { 'pacman-contrib':
    ensure => installed,
  }
}
