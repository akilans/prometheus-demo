Vagrant.configure("2") do |config|

  # Running VM 1 with prometheus, alert Manager
  config.vm.define :ubuntu_1 do |ubuntu_1|
    ubuntu_1.vm.box = "ubuntu/bionic64"
    ubuntu_1.vm.network "private_network", ip: "192.168.33.10"
  
    ubuntu_1.vm.provider "virtualbox" do |vb|
      vb.memory = "1024"
      vb.name = "ubuntu_1"
    end
    
    # Installing prometheus and alert manager
    ubuntu_1.vm.provision :shell, path: "prometheus-setup/install-prometheus.sh"
    ubuntu_1.vm.provision :shell, path: "prometheus-setup/install-alert-manager.sh"

  end

  # Running VM 2
  config.vm.define :ubuntu_2 do |ubuntu_2|
    ubuntu_2.vm.box = "ubuntu/bionic64"
    ubuntu_2.vm.network "private_network", ip: "192.168.33.11"
  
    ubuntu_2.vm.provider "virtualbox" do |vb|
      vb.memory = "1024"
      vb.name = "ubuntu_2"
    end
  end

  # Installing node exporter on both VMs
  config.vm.provision :shell, path: "prometheus-setup/install-node-exporter.sh"

end
