class role::apache_sites {
  class { 'apache':
    default_vhost => false,
  }

  profile::apache_site { 'site1':
    site_port => 8080,
  }

  profile::apache_site { 'site2':
    site_port => 8081,
  }

  profile::apache_site { 'site3':
    site_port => 8082,
  }

  profile::apache_site { 'site4':
    site_port => 8083,
  }

  profile::apache_site { 'site5':
    site_port => 8084,
  }
}
