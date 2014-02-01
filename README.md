# Graphite Inna Can

## Vagrant configuration

### Auto-manage Guest Additions

Install (vagrant-vbguest)[https://github.com/dotless-de/vagrant-vbguest] with the following command;

    vagrant plugin install vagrant-vbguest
	

	
# Notes

The following commands are needed to get the listjobs.rb script working:

    sudo yum install libxml2-devel libxslt libxslt-devel ruby-devel
    sudo gem install jenkins_api_client
    sudo gem install graphite-api
