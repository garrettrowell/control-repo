define profile::site_db (
  String                $db_ensure    = 'present',
  String                $db_user      = $name,
  String                $db_passwd    = hiera("${name}::db_pass"),
  String                $db_host      = 'localhost',
  String                $db_path      = "/tmp/${name}.sql",
  Array[String]         $db_grant     = ['SELECT', 'UPDATE'],
  String                $site_ensure  = 'present',
  String                $site_docroot = "/var/www/${name}",
  String                $site_owner   = 'root',
  String                $site_group   = 'root',
  Pattern[/([0-7]{4})/] $site_mode    = '0644',
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

  file { "${name}.index":
    path    => "${site_docroot}/index.php",
    ensure  => $site_ensure,
    owner   => $site_owner,
    group   => $site_group,
    mode    => $site_mode,
    content => template('profile/web/site.php.erb'),
    require => Apache::Vhost["${name}.example.com"],
  }
}
