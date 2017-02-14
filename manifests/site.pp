## site.pp ##

# Disable filebucket by default for all File resources:
#https://docs.puppet.com/pe/2015.3/release_notes.html#filebucket-resource-no-longer-created-by-default
File { backup => false }

node default {
}

node 'cent-agent.localdomain' {
    include ::role::apache_sites
    include ::role::db_setup
}
