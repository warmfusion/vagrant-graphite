#Puppet configuration to be served from the master

include epel

node "graphite.tobyjackson.net" {
  notice("Configuring node 'graphite'")
  include graphite
}
