box      = 'fadenb/ubnt-quantal-puppet3'
hostname = 'dev'
ram      = '4028'
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = box
  config.vm.host_name = hostname
  config.vm.network :public_network
  
  config.vm.provider "virtualbox" do |v|
  v.memory = ram
  v.cpus = 2
end
   
  
  config.vm.provision :puppet do |puppet|
    puppet.module_path = 'puppet/modules'
    puppet.manifests_path = 'puppet/manifests'
    puppet.manifest_file = 'site.pp'
  end
  
end

