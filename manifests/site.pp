## site.pp ##

# Disable filebucket by default for all File resources:
#https://docs.puppet.com/pe/2015.3/release_notes.html#filebucket-resource-no-longer-created-by-default
File { backup => false }

node default {
  # This is where you can declare classes for all nodes.
  # Example:
  #   class { 'my_class': }
}

node 'cent-agent.localdomain' {
    include ::role::apache_sites

    class { '::php':
      ensure       => latest,
      manage_repos => true,
      fpm          => true,
      dev          => true,
      composer     => true,
      pear         => true,
      phpunit      => false,
    }

    #Only needed when using concat module tag 1.1.0,
    # order needs to be a string. Fixed in tag >= 1.1.1
    Concat::Fragment <| |> {
      order => '10',
    }

    #needs to be moved into roles + profiles
    class { '::mysql::server':
      root_password           => 'strongpassword',
      remove_default_accounts => true,
    }
}
