class configuration::core {
  file { '/etc/pulse/default.pa':
    ensure => present,
    source => 'https://raw.githubusercontent.com/hellia-be/pinephone-dotfiles/main/core/default.pa',
  }
  file { 'vimrc':
    ensure => present,
    path => '/home/hellia/.vimrc',
    owner => 'hellia',
    group => 'hellia',
    mode => '0644',
    source => 'https://raw.githubusercontent.com/hellia-be/pinephone-dotfiles/master/vim/vimrc',
    require => Package['vim'],
  }
  file { '/home/hellia/.bashrc':
    ensure => present,
    owner  => 'hellia',
    group  => 'hellia',
    mode   => '0644',
    source => 'https://raw.githubusercontent.com/hellia-be/pinephone-dotfiles/main/bash/bashrc',
  }
  file { '/home/hellia/.inputrc':
    ensure => present,
    owner  => 'hellia',
    group  => 'hellia',
    mode   => '0644',
    source => 'https://raw.githubusercontent.com/hellia-be/pinephone-dotfiles/main/bash/inputrc',
  }
}
