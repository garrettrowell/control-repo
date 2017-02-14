class role::db_setup (
  $db_root = hiera('role::db_setup::db_root'),
){
  class { '::php':
    ensure       => latest,
    manage_repos => true,
    fpm          => true,
    dev          => true,
    composer     => true,
    pear         => true,
    phpunit      => false,
  }

  class { '::mysql::server':
    root_password           => $db_root,
    remove_default_accounts => true,
  }

  class { '::mysql::bindings':
    php_enable => true,
  }
}
