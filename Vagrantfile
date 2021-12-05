Vagrant.configure("2") do |config|

    # config.vm.box = "ubuntu/xenial64"
    # config.vm.box = "ubuntu/bionic64"
    config.vm.box = "ubuntu/focal64"

    config.vm.provider "virtualbox" do |vm|
        vm.cpus = 4
        vm.memory = 2048
    end

    config.vm.provision "shell", path: "scripts/_upgrade.sh"
    config.vm.provision "shell", path: "scripts/_utilities.sh"

    # config.vm.provision "shell", path: "scripts/gcc.sh"
    # config.vm.provision "shell", path: "scripts/llvm.sh"
    # config.vm.provision "shell", path: "scripts/golang.sh"
    # config.vm.provision "shell", path: "scripts/rust.sh"
    # config.vm.provision "shell", path: "scripts/python.sh"
    # config.vm.provision "shell", path: "scripts/ruby.sh"
    # config.vm.provision "shell", path: "scripts/php.sh"
    # config.vm.provision "shell", path: "scripts/nodejs.sh"
    # config.vm.provision "shell", path: "scripts/dotnet.sh"
    # config.vm.provision "shell", path: "scripts/java.sh"
    # config.vm.provision "shell", path: "scripts/haskell.sh"

    # config.vm.provision "shell", path: "scripts/git.sh"
    # config.vm.provision "shell", path: "scripts/git-config.sh"

    # config.vm.provision "shell", path: "scripts/gradle.sh"
    # config.vm.provision "shell", path: "scripts/maven.sh"

    # config.vm.provision "shell", path: "scripts/packer.sh"
    # config.vm.provision "shell", path: "scripts/vagrant.sh"
    # config.vm.provision "shell", path: "scripts/terraform.sh"
    # config.vm.provision "shell", path: "scripts/ansible.sh"

    # config.vm.provision "shell", path: "scripts/docker.sh"
    # config.vm.provision "shell", path: "scripts/docker-compose.sh"
    # config.vm.provision "shell", path: "scripts/virtualbox.sh"

    # config.vm.provision "shell", path: "scripts/sysdig.sh"
    # config.vm.provision "shell", path: "scripts/wireshark.sh"

    # config.vm.provision "shell", path: "scripts/aws-cli.sh"
    # config.vm.provision "shell", path: "scripts/azure-cli.sh"
    # config.vm.provision "shell", path: "scripts/google-cloud-sdk.sh"

    # config.vm.provision "shell", path: "scripts/visual-studio-code.sh"
    # config.vm.provision "shell", path: "scripts/jetbrains-toolbox.sh"

    # config.vm.provision "shell", path: "scripts/chrome.sh"
    # config.vm.provision "shell", path: "scripts/brave.sh"
    # config.vm.provision "shell", path: "scripts/opera.sh"
    # config.vm.provision "shell", path: "scripts/edge.sh"

    # config.vm.provision "shell", path: "scripts/windscribe.sh"

    # config.vm.provision "shell", path: "scripts/megasync.sh"

end