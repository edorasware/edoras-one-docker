Vagrant.configure("2") do |config|
  config.vm.define "edorasone" do |edorasone|
    
  	edorasone.vm.box = "ubuntu/trusty64"
  	edorasone.vm.synced_folder "deploy", "/vagrant/deploy", create: true
  	edorasone.vm.synced_folder "logs", "/vagrant/logs", create: true
  	edorasone.vm.synced_folder "license", "/vagrant/license", create: true
  	edorasone.vm.synced_folder "data", "/vagrant/data", create: true
  	
  	edorasone.vm.provider "virtualbox" do |v|
  		v.memory = 2048
	end
 
 	edorasone.vm.provision "docker" do |d|
    	d.build_image "--tag=edorasone /vagrant"
    	d.run "edorasone", args: "-p 8080:8080 -v /vagrant/license:/root/.edorasware -v /vagrant/logs:/usr/local/tomcat/logs -v /vagrant/data:/root/.edoras-one"
  	end
  	
  end
  	
end