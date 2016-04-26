# taiga-playbook
Install taiga by running the playbook

Set your infos in the inventory :
 - $HOST_IP : the server ip address, public or local
 - $USER : a sudo user

<pre>
[taiga:children]
taiga-back
taiga-front

[taiga-back]
$HOST_IP ansible_ssh_user=$USER inventory_host_ip=$HOST_IP

[taiga-front]
$HOST_IP ansible_ssh_user=$USER inventory_host_ip=$HOST_IP
</pre>

Then run the playbook

<pre>
ansible-playbook --private-key=/path/to/key.pem -i inventory taiga.yml
</pre>

### Developpement
For local dev, you can start a Virtual Machine with the Vagrantfile.


Just run it with following command : 
<pre>
vagrant up
</pre>

This will create a vm according to this default values :
<pre>
Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.network "private_network", ip: "192.168.17.17"
  # config.vm.synced_folder "./data", "/vagrant_data"
  config.vm.provider "virtualbox" do |vb|
    vb.memory = "2048"
  end
end
</pre>

# Notes

Tested on :
 - Ubuntu 14.04 (trusty)
