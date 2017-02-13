define profile::site_db (
  String $db_ensure  = 'present',
  String $db_user    = $name,
  String $db_passwd  = hiera("${name}::db_pass"),
  String $db_host    = 'localhost',
  String $db_path    = "/tmp/${name}.sql",
  Array[String] $db_grant = ['SELECT', 'UPDATE'],
){

  file { "${db_path}":
    ensure => $db_ensure,
    source => "puppet:///modules/profile/db/${name}.sql",
  }

  mysql::db { "${name}_db":
    ensure   => $db_ensure,
    user     => $db_user,
    password => $db_passwd,
    host     => $db_host,
    grant    => $db_grant,
    sql      => $db_path,
    require  => File["${db_path}"],
  }
}
