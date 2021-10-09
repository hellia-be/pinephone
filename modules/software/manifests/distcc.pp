class software::distcc {
  package { 'distcc':
    ensure => installed,
  }
  service { 'distccd':
    ensure => running,
    enable => true,
  }
}
