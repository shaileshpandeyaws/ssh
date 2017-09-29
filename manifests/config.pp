class ssh::config(
  $permitrootlogin = $::ssh::permitrootlogin, 
  $port            = $::ssh::port,
){
  file { '/etc/ssh/sshd_config':
    ensure => file,
    mode   => '0644',
    owner  => 'root',
    group  => 'root',
#    source => 'puppet:///modules/ssh/sshd_config',
    content => template('ssh/sshd_config.erb'),
  }
}
