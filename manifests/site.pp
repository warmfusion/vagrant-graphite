#Puppet configuration to be served from the master

include epel

node "graphite.tobyjackson.net" {
  notice("Configuring node 'graphite'")
  include graphite
  
  iptables::allow { 'tcp/80': port => '80', protocol => 'tcp' }
  # Carbon ports - newline, delimited and pickle protocols
  iptables::allow { 'tcp/2003': port => '2003', protocol => 'tcp' }
  iptables::allow { 'tcp/2004': port => '2004', protocol => 'tcp' }
  iptables::allow { 'tcp/7002': port => '7002', protocol => 'tcp' }
  
}
