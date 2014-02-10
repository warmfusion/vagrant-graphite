# Graphite Inna Can

## Vagrant configuration

### Box Base

    vagrant box add centos-6.4 http://developer.nrel.gov/downloads/vagrant-boxes/CentOS-6.4-x86_64-v20130731.box

### Auto-manage Guest Additions

Install (vagrant-vbguest)[https://github.com/dotless-de/vagrant-vbguest] with the following command;

    vagrant plugin install vagrant-vbguest
	

	
# Notes

The following commands are needed to get the listjobs.rb script working:

    sudo yum install libxml2-devel libxslt libxslt-devel ruby-devel
    sudo gem install jenkins_api_client
    sudo gem install graphite-api
