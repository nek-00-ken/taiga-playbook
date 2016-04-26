# -*- mode: ruby -*-
# vi: set ft=ruby :
#

Vagrant.configure(2) do |config|

  config.vm.define "web-1" do |web|
    web.vm.box = "ubuntu/trusty64" # Ubuntu Server 14.04 LTS (Trusty Tahr)
    web.vm.network "private_network", ip: "192.168.17.17"
    #web.vm.synced_folder "./data", "/vagrant_data"
    web.vm.provider "virtualbox" do |vb|
      vb.memory = "1024"
    end
  end

  config.vm.define "web-2" do |web|
    web.vm.box = "hashicorp/precise64" # A standard Ubuntu 12.04 LTS 64-bit box.
    web.vm.network "private_network", ip: "192.168.17.18"
    #web.vm.synced_folder "./data", "/vagrant_data"
    web.vm.provider "virtualbox" do |vb|
      vb.memory = "1024"
    end
  end

end

