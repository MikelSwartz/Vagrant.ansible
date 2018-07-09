#
#-*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.define "acs" do |acs|
    acs.vm.box = "ubuntu/trusty64"
    acs.vm.hostname = "acs"
    acs.vm.network "private_network", ip: "192.168.33.10"
    acs.vm.provision "shell", path: "acs.provision.sh"
  end

  config.vm.define "web" do |web|
#    web.vm.box = "geerlingguy/centos7"
    web.vm.box = "bmcgonigle/centos68"
    web.vm.hostname = "web"
    web.vm.network "private_network", ip: "192.168.33.20"
    web.vm.network "forwarded_port", guest: 80, host: 8081
  end
  
  config.vm.define "rhweb" do |rhweb|
    rhweb.vm.box = "geerlingguy/centos7"
    rhweb.vm.hostname = "rhweb"
    rhweb.vm.network "private_network", ip: "192.168.33.21"
    rhweb.vm.network "forwarded_port", guest: 80, host: 8083
  end
  
  config.vm.define "dweb" do |dweb|
    dweb.vm.box = "hashicorp/precise64"
    dweb.vm.hostname = "dweb"
    dweb.vm.network "private_network", ip: "192.168.33.25"
    dweb.vm.network "forwarded_port", guest: 80, host: 8082
  end

  config.vm.define "db" do |db|
    db.vm.box = "geerlingguy/centos7"
    db.vm.hostname = "db"
    db.vm.network "private_network", ip: "192.168.33.30"
    db.vm.provision "shell", path: "db.provision.sh"
  end

  config.vm.define "arch" do |arch|
    arch.vm.box = "ogarcia/archlinux-x64"
    arch.vm.hostname = "arch"
    arch.vm.network "private_network", ip: "192.168.33.50"
    arch.vm.provision "shell", path: "arch.provision.sh"
  end

  config.vm.define "arch1" do |arch|
    arch.vm.box = "terrywang/archlinux"
    arch.vm.hostname = "arch1"
    arch.vm.network "private_network", ip: "192.168.33.51"
    arch.vm.provision "shell", path: "arch.provision.sh"
  end
end
