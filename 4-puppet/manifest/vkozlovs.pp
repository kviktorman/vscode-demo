class hg_training::temp (String $training_path){

  package { 'fortune-mod':
    ensure => present,
  }

  file { "${training_path}/info.php":
    ensure  => file,
    content => template('location'),
    owner   => 'root',
    group   => 'apache',
    mode    => '0640',
    require => File[$training_path],
  }

}
