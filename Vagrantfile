# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  #config.vm.box = "precise64"
  #config.vm.box_url = "http://files.vagrantup.com/precise64.box"

  config.vm.box = "pussinboots/ubuntu-truly"
  config.vm.box_url = "https://atlas.hashicorp.com/pussinboots/boxes/ubuntu-truly"

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine. In the example below,
  # accessing "localhost:8080" will access port 80 on the guest machine.
  # config.vm.network "forwarded_port", guest: 80, host: 8080

  # Create a private network, which allows host-only access to the machine
  # using a specific IP.
  # config.vm.network "private_network", ip: "192.168.33.10"

  # Create a public network, which generally matched to bridged network.
  # Bridged networks make the machine appear as another physical device on
  # your network.
  # config.vm.network "public_network"

  # If true, then any SSH connections made will enable agent forwarding.
  # Default value: false
  # config.ssh.forward_agent = true

  # Share an additional folder to the guest VM. The first argument is
  # the path on the host to the actual folder. The second argument is
  # the path on the guest to mount the folder. And the optional third
  # argument is a set of non-required options.
  config.vm.synced_folder "c:\\workspaces\\seethrough\\dev", "/sync"


  config.vm.hostname = "seethrough-dev-env"
  config.vm.network "private_network", ip: "10.0.0.15"

  config.vm.provider :virtualbox do | vbox |
    vbox.gui = true
    vbox.name = "seethrough-dev-env"

    # Use VBoxManage to customize the VM. For example to change memory:
    vbox.customize ["modifyvm", :id, "--name", "seethrough-dev-env"]
    vbox.customize ["modifyvm", :id, "--ioapic", "on"]
    vbox.customize ["modifyvm", :id, "--cpus", "2"]
    vbox.customize ["modifyvm", :id, "--memory", "3584"]
    vbox.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
  end

  config.vm.provision :shell do | shell |
    shell.path = "scripts/setup.sh"
  end

end
