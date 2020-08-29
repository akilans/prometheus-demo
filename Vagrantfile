Vagrant.configure("2") do |config|

  config.vm.define :ubunut_1 do |ubunut_1|
    ubunut_1.vm.box = "ubuntu/bionic64"
    ubunut_1.vm.network "private_network", ip: "192.168.33.10"
  
    ubunut_1.vm.provider "virtualbox" do |vb|
      vb.memory = "1024"
      vb.name = "ubunut_1"
    end
   
    ubunut_1.vm.provision :shell, path: "prometheus-setup/install-server.sh"

  end

  config.vm.define :ubunut_2 do |ubunut_2|
    ubunut_2.vm.box = "ubuntu/bionic64"
    ubunut_2.vm.network "private_network", ip: "192.168.33.11"
  
    ubunut_2.vm.provider "virtualbox" do |vb|
      vb.memory = "1024"
      vb.name = "ubunut_2"
    end
  end

  config.vm.provision :shell, path: "prometheus-setup/install-node-exporter.sh"

end
