Vagrant.configure("2") do |config|

    config.vm.box = "ubuntu/jammy64" # 22.04 LTS

    config.vm.provider "virtualbox" do |vm|
        vm.cpus = 4
        vm.memory = 2048
    end

    config.vm.synced_folder "/host", "/guest", disabled: true
    # config.vm.synced_folder '/host', '/guest', SharedFoldersEnableSymlinksCreate: false

    config.vm.provision "shell", path: "scripts/_upgrade.sh"
    config.vm.provision "shell", path: "scripts/_desktop.sh"

end
