Vagrant.configure("2") do |config|
  config.vm.provider "virtualbox" do |vb|
    vb.memory = "512"
    vb.cpus = 1
  end

  # --- WEB01 (Ubuntu) ---
  config.vm.define "web01" do |web01|
    web01.vm.box = "ubuntu/focal64"
    web01.vm.hostname = "richard-web01"
    web01.vm.network "private_network", ip: "192.168.56.11"
    # Points ONLY to the first web script
    web01.vm.provision "shell", path: "scripts/web01_setup.sh"
  end

  # --- WEB02 (Ubuntu) ---
  config.vm.define "web02" do |web02|
    web02.vm.box = "ubuntu/focal64"
    web02.vm.hostname = "richard-web02"
    web02.vm.network "private_network", ip: "192.168.56.12"
    # Points ONLY to the second web script (with the Event Invitation)
    web02.vm.provision "shell", path: "scripts/web02_setup.sh"
  end

  # --- DB01 (CentOS) ---
  config.vm.define "db01" do |db01|
    db01.vm.box = "centos/7"
    db01.vm.hostname = "richard-db01"
    db01.vm.network "private_network", ip: "192.168.56.13"
    # Points ONLY to the DB script (using yum)
    db01.vm.provision "shell", path: "scripts/db01_setup.sh"
  end
end