Vagrant.configure("2") do |config|
     config.vm.define "mongo1" do |mongo1|
     mongo1.vm.box = "ubuntu/xenial64"
     mongo1.vm.provision :shell, :path => "node-bootstrap.sh"
     mongo1.vm.network :private_network, ip: '10.0.34.31'
     mongo1.vm.hostname = "mongo1"
     mongo1.vm.provider "virtualbox" do |v|
        v.memory = 1024
        v.cpus = 1
     end
     end
     config.vm.define "mongo2" do |mongo2|
     mongo2.vm.provision :shell, :path => "node-bootstrap.sh"
     mongo2.vm.network :private_network, ip: '10.0.34.32'
     mongo2.vm.box = "ubuntu/xenial64"
     mongo2.vm.hostname = "mongo2"
     mongo2.vm.provider "virtualbox" do |v|
  	v.memory = 1024
  	v.cpus = 1
     end
     end
     config.vm.define "mongoARB" do |mongoARB|
     mongoARB.vm.provision :shell, :path => "node-bootstrap.sh"
     mongoARB.vm.network :private_network, ip: '10.0.34.33'
     mongoARB.vm.box = "ubuntu/xenial64"
     mongoARB.vm.hostname = "mongoARB"
     config.vm.provider "virtualbox" do |v|
        v.memory = 512
        v.cpus = 1
     end
     end

end
