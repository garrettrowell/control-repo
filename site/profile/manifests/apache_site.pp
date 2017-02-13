define profile::apache_site (
  Pattern[/((\d{1,3}(\.)?){4})/] $site_ip      = $::ipaddress,
  Pattern[/([0-7]{4})/]          $site_mode    = '0644',
  Integer                        $site_port    = 80,
  String                         $site_ensure  = 'present',
  String                         $site_docroot = "/var/www/${name}",
  String                         $site_owner   = 'root',
  String                         $site_group   = 'root',
){
  apache::vhost { "${name}.example.com":
    ip            => $site_ip,
    port          => $site_port,
    docroot       => $site_docroot,
    docroot_owner => $site_owner,
    docroot_group => $site_group,
  }

  profile::site_db { "${name}":
    site_ensure  => $site_ensure,
    site_docroot => $site_docroot,
    site_owner   => $site_owner,
    site_group   => $site_group,
    site_mode    => $site_mode
  }

  selinux::port { "allow http_port_t ${site_port}":
    context  => 'http_port_t',
    port     => $site_port,
    protocol => 'tcp',
    argument => '-m',
  }
}
