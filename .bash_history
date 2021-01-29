git commit -m "role for php and apache added"
git push -u origin master
clear
cd general-automation/
ls
vim serial.yaml
ansible-playbook serial.yaml 
ansible-playbook serial.yaml -i inv.ini 
vim serial.yaml
ansible-playbook serial.yaml -i inv.ini 
ls
echo "This is ansible" >> secrat.txt
cat secrat.txt 
ansible-vault encrypy secrat.txt 
ansible-vault encrypt secrat.txt 
cat secrat.txt 
ansible-vault encrypt_string "this world of ansible" -n meaning --vault-id qa@prompt
ls
cd server-automation/
ls
cd playbooks/
ls
cat sudo_user_add.yaml 
cd ../
ls
cat inv.ini 
vim inv.ini 
cat inv.ini 
cd playbooks/
ls
vim sudo_user_add.yaml 
cd ..
ansible-playbook -i inv.ini playbooks/sudo_user_add.yaml 
ssh-copy-id root@172.16.9.108
ansible-playbook -i inv.ini playbooks/sudo_user_add.yaml 
ls
cd server-automation/
cat playbooks/sudo_user_add.yaml 
ssh NocUser@172.16.9.108
ssh root@172.16.9.108
ssh NocUser@172.16.9.108
ssh root@172.16.9.108
ssh AdminUser@172.16.9.108
vim playbooks/sudo_user_add.yaml 
clear
cat /etc/default/grub 
cat /etc/sysctl.conf 
cd /etc/sysctl.d/
ls
cat 99-sysctl.conf 
cd ..
cd sysconfig/
ls
clear
ansible-doc vmware_guest
exit
clear
ansible-doc -s vmware_guest
exit
clear
useradd ansible
passwd ansible
vim visudo 
visudo 
ls
ssh -i id_rsa NocUser@172.16.9.113
ls
rm -rf id_rsa 
ls
ssh-copy-id  -i id_rsa.pub  NocUser@172.16.9.108
ssh -i id_rsa NocUser@172.16.9.108
ip a
ssh AdminUser@172.16.9.108
ssh root@172.16.9.108
ip a
ls
pwd
cd /
ls
cd
pwd
ip a
ls
scp -i id_rsa AdminUser@172.16.9.108
scp -i /root/id_rsa AdminUser@172.16.9.108
ssh -i /root/id_rsa AdminUser@172.16.9.108
ls
ssh -i id_rsa NocUser@172.16.9.108
cd key/
ssh -i id_rsa AdminUser@172.16.9.108
ls
ssh -i /root/id_rsa NocUser@172.16.9.108
ls
mkdir key
ls
cd key/
ls
cat id_rsa.pub 
ls
ssh -i id_rsa AdminUser@172.16.9.108
ls
ssh -i id_rsa AdminUser@172.16.9.108
ls
ssh -i id_rsa AdminUser@172.16.9.108
ls
cat id_rsa
cd ..
ls
cat id_rsa
ls
cd general-automation/
clear
ls
cd role
cd roles
ls
cd apache/
ls
cd vars/
ls
cat main.yml 
cd ../defaults/
ls
cat main.yml 
cd ..
ls
cd ../../server-automation/
ls
cd roles/
ls
cd ..
ls
cat vms-to-deploy.ini 
cd server-automation/
ls
cd roles/
ls
cd deploy-vsphere-template/
ls
cd tasks/
ls
cat main.yml 
cd ..
ls
cd ..
ls
cd ..
ls
cd group_vars/
ls
cat vCenter 
cd ..
cd host_vars/
ls
cd ..
ls
cat answerfile.yml 
cat vms-to-deploy.ini 
cat deploy-qa-prod.yml 
cat inv.ini 
ls
cat vms-to-deploy.ini 
ls
cd group_vars/
ls
cat vCenter 
cd ..
ls
cd roles/
ls
cd deploy-vsphere-template/
ls
cd tasks/
vim main.yml 
pwd
cp main.yml ../../vm-deploy-template/tasks/main.yml 
cat main.yml 
cd ..
ls
cd ..
ls
ansible-galaxy init vm-remove-name
ls
cp vm-deploy-template/vars/main.yml vm-remove-name/vars/main.yml 
cd vm-deploy-template/
vim tasks/main.yml 
cd ../vm-deploy-template/
cd ../vm-remove-name/
clear
ls
cat vars/main.yml 
vim tasks/main.yml 
cd ..
ls
cd vm-deploy-template/tasks/
cat main.yml 
ls
cd server-automation/
clear
ls
cd roles/
ls
ansible-galaxy init vm-deploy-template
ls
cd vm-deploy-template/
ls
cd vars/
ls
pwd
vim main.yml 
ls
cd ..
ls
cd tasks/
ls
vim main.yml 
ls
cd ..
ls
cd ..
ls
clear
cd ..
ls
cd group_vars/
ls
mv vCenter old_vCenter
ls
cd ..
cat vms-to-deploy.ini 
vim vms-to-deploy.ini 
ls
vim deploy-qa-prod.yml 
ansible-playbook -i vms-to-deploy.ini deploy-qa-prod.yml 
cd roles/vm-deploy-template/tasks/
cat main.yml 
cd ..
clear
ls
cp vms-to-deploy.ini vms-to-remove.ini 
ls
cp vms-to-remove.ini 
cat vms-to-remove.ini 
vim vms-to-remove.ini 
cp deploy-qa-prod.yml remove-vm-prod.yaml
vim remove-vm-prod.yaml 
ansible-playbook -i vms-to-remove.ini remove-vm-prod.yaml 
vim roles/vm-remove-name/tasks/main.yml 
ansible-playbook -i vms-to-remove.ini remove-vm-prod.yaml 
vim roles/vm-remove-name/tasks/main.yml 
ansible-playbook -i vms-to-remove.ini remove-vm-prod.yaml 
vim roles/vm-remove-name/tasks/main.yml 
clear
ansible-playbook -i vms-to-remove.ini remove-vm-prod.yaml 
vim roles/vm-remove-name/tasks/main.yml 
ansible-playbook -i vms-to-remove.ini remove-vm-prod.yaml 
vim roles/vm-remove-name/tasks/main.yml 
ansible-playbook -i vms-to-remove.ini remove-vm-prod.yaml 
vim roles/vm-remove-name/tasks/main.yml 
clear
ansible-playbook -i vms-to-remove.ini remove-vm-prod.yaml 
vim roles/vm-remove-name/tasks/main.yml 
ansible-playbook -i vms-to-remove.ini remove-vm-prod.yaml 
ls
cd server-automation/
clear
ls
cd /etc/ansible/
ls
cd /usr/bin/ansible
cd /root/
ls
cd general-automation/
ls
cat inv.ini 
cd /etc/ansible/
ls
cat hosts 
pwd
cd
pwd
ls
cd general-automation/
ls
cat adhoc-commands.txt 
cd ../server-automation/
ls
cd playbooks/
ls
cat vmcreate_from_templete.yml 
ls
cd ..
ls
cd general-automation/
ls
cat adhoc-commands.txt 
ansible kubernetes -i inv.ini -m user -a name=test
ansible kubernetes -i inv.ini -m user -a name=test1
cd ../server-automation/
ls
cd roles/
ls
cd deploy-vsphere-template/
ls
cd tasks/
ls
cd ..
ls
cd ..
ls
cd vm-deploy-template/
ls
cd ..
ls
cat deploy-qa-prod.yml 
curl -i 172.16.8.45:30036
ping 172.16.8.45
curl -i 172.16.8.45:30036
ls
cd server-automation/
ls
cp ansible.cfg ../network-automation/
cd group_vars/
ls
cd
cd network-automation/
clear
ls
cd group_vars/
ls
ansible-vault view vault 
ls
cat routers.yaml 
ls
vim routers.yaml 
clear
ls
cd ..
ls
cd ..
ls
cd server-automation/
ls
cd host_vars/
ls
cd ../group_vars/
ls
cd
cd network-automation/
ls
cat group_vars/routers.yaml 
ls
pwd
vim no_cdp.yml
clear
ls
cat no_cdp.yml 
clear
ansible-playbook no_cdp.yml 
ls
clear
vim save_when.yml
ansible-playbook save_when.yml 
vim group_vars/routers.yaml 
vim acl.yaml
ansible-playbook acl.yaml
cd ..
cd network-automation/
clear
ls
vim group_vars/routers.yaml 
cat show_ip_int_brief.yml 
cat logging_host.yml 
vim no_cdp.yml 
clear
vim save_when.yml 
ls
vim parents.yml
ansible-playbook show_ip_int_brief.yml 
ls
vim parents.yml 
clear
ls
ansible-playbook parents.yml 
clear
ls
cd network-automation/
ls
ansible --version
ping 10.100.100.111
ip a
ping 10.100.100.111
ls
clear
pwd
vim /etc/ansible/hosts 
vim host_name
ping 10.100.100.111
ping 10.100.100.112
ssh mpls1@10.100.100.111
clear
ls
mkdir group_vars
ls
mv host_name host_inv
ls
cat host_inv 
vim group_vars/routers.yaml
vim host_inv 
ls
ansible-vault create vault
ls
vim host_inv 
ls
cd group_vars/
ls
vim routers.yaml 
clear
ls
cd ..
ls
vim vault 
ansible-vault decrept vault 
ansible-vault decrypt vault 
ls
cat vault 
vim vault 
ls
mv vault group_vars/
clear
ls
cd group_vars/
ls
cat vault 
ansible-vault encrypt vault
ansible-vault view vault 
clear
ls
cd ..
ls
cd group_vars/
ls
vim routers.yaml 
cd ..
ls
cat ansible.cfg 
clear
ls
vim show_ip_int_brief.yml
vim README.txt
ansible-playbook show_ip_int_brief.yml -i host_inv --ask-vault-pass
cat show_ip_int_brief.yml 
clear
ls
cd group_vars/
ls
cat routers.yaml 
ls
cat vault 
cd ..
clear
ls
ansible-playbook show_ip_int_brief.yml -i host_inv --ask-vault-pass
vim group_vars/routers.yaml 
ansible-playbook show_ip_int_brief.yml -i host_inv --ask-vault-pass
clear
ls
mv host_inv inventory.ini
ls
cat inventory.ini 
vim inventory.ini 
cd group_vars/
ls
cd ..
mkdir host_vars
cd host_vars/
vim router-1.yaml
ls
cp router-1.yaml router-2.yaml 
vim router-2.yaml 
clear
ls
cd ..
vim group_vars/routers.yaml 
ls
ansible-playbook show_ip_int_brief.yml -i inventory.ini 
ssh mpls2@10.100.100.112
clear
ansible-playbook show_ip_int_brief.yml -i inventory.ini 
clear
ls
git add .
git status
cd 
clear
ls
cd network-automation/
git commit -m "ios basic command playbook"
git push origin master
clear
ls
cd group_vars/
vim routers.yaml 
cd ../host_vars/
ls
vim router-1.yaml 
vim router-2.yaml 
cd ..
clear
ansible-playbook show_ip_int_brief.yml -i inventory.ini
clear
ls
pwd
vim ansible.cfg 
clear
ls
vim logging_host.yml
ansible-playbook logging_host.yml 
clear
ls
cd network-automation/
ls
git add .
git commit -m "ios_config playbook added"
git push origin master
ls
ping 10.100.100.111
clear
ls
vim host_vars_example.yml
cd host_vars
ls
vim router-1.yaml 
vim router-2.yaml 
cd ..
git add .
git commit -m "host varibale define in host_vars folder"
git push origin master
ip a
ls
cd network-automation/
ls
cd
ip a
clear
cat /etc/sysconfig/network-scripts/ifcfg-ens160 
ip a
vim /etc/sysconfig/network-scripts/ifcfg-ens160 
reboot
ip a
clear
ls
cd network-automation/
git add .
git status
clear
git commit -m 'modified files'
git add -a
git add .
clear
git status
git commit -m 'modified files'
clear
ls
cd network-test-virtualenv/
ls
cd bin/
source activate
ls
cd network-testing/
ls
cd networktest/
ls
clear
ls
cat my_testbed.yaml 
clear
ls
vim basic_device_connection.py 
python basic_device_connection.py 
ls
cat basic_device_connection.py 
vim basic_device_connection.py 
clear
python basic_device_connection.py
en
clear
python basic_device_connection.py
ssh cisco@10.100.100.111
ssh mpls1@10.100.100.111
clear
ls
cd network-test-virtualenv/
source bin/activate
ls
cd bin/
ls
cd network-testing/
ls
cd networktest/
ls
cat my_testbed.yaml 
cd
pwd
ls
cd network-test-virtualenv/
ls
git status
cd ..
ls
git add .
pwd
ls
git add .
cd network-test-virtualenv/
ls
git add .
git commit -m 'pyats first'
git push origin master
clear
ls
cd network-automation/
ls
cd ..
clear
ls
python --version
python3 --version
clear
yum install epel-release
clear
yum install python37 python-pip
clear
python3 -m venv network-test-virtualenv
yum update -y
yum install -y python3
python3 --version
pip3 freeze
pip freeze
clear
python3 -m venv network-test-virtualenv
ls
cd network-test-virtualenv/
ls
cd bin/
ls
source activate
pip --version
pip3 --version
pip freeze
pip instaall --upgrade pip
pip install --upgrade pip
clear
python3.6 --version
python3 --version
clear
pip3 freeze
python --version
rpm -qa | grep python
rpm -qa | grep python3
clear
yum install python3-venv python3-dev libpython3-dev build-essential
clear
pip install pyats[full]
clear
pyats version check
clear
ls
clear
ls
mkdir network-testing
cd network-testing/
git init
git clone https://github.com/CiscoTestAutomation/examples
ls
cd examples/
clear
ls
ll
clear
ls
cd basic/
ls
cat basic_example_script.py 
clear
ls
cd ..
ls
cd ..
ls
mkdir networktest
cd networktest/
ls
clear
vim my_testbed.yaml
ls
vim basic_device_connection.py
python3 basic_device_connection.py 
cat basic_device_connection.py 
clear
vim basic_device_connection.py 
python3 basic_device_connection.py
ls
pyats validate testbed my_testbed.yaml
clear
ls
cat basic_device_connection.py 
clear
ls
chmod 777 basic_device_connection.py 
python basic_device_connection.py 
pip3 freeze
clear
python3.6 basic_device_connection.py 
pip3 install pyats[full]
clear
pip3.6 install pyats[full]
clear
python3.6 basic_device_connection.py
vim basic_device_connection.py
./basic_device_connection.py 
python3 basic_device_connection.py 
pip3 install pyats[library]
clear
pip list | grep robot
git clone https://github.com/cldeluna/pyats_intro.git
ls
cd pyats_intro/
ls
cat first_genie.py 
python first_genie.py 
clear
ls
cat devnet_sbx_testbed.yml
clear
cat first_genie.py 
ip a
ls
cd ..
ls
clear
vim my_testbed.yaml 
ls
python basic_device_connection.py 
show run
clear
ls
vim basic_device_connection.py 
python basic_device_connection.py
vim basic_device_connection.py 
clear
python basic_device_connection.py
clear
vim my_testbed.yaml 
vim basic_device_connection.py 
python basic_device_connection.py
ls
vim my_testbed.yaml 
pyats validate testbed my_testbed.yaml
vim my_testbed.yaml 
pyats validate testbed my_testbed.yaml
vim my_testbed.yaml 
pyats validate testbed my_testbed.yaml
clear
python basic_device_connection.py
clear
python basic_device_connection.py
pyats parse "show version" --testbed-file my_testbed.yaml --devices uut
python basic_device_connection.py
clear
ls
vim my_testbed.yaml 
vim basic_device_connection.py 
python basic_device_connection.py
ls
clear
vim ios_testbed.yaml
ls
mv ios_testbed.yaml.txt ios_testbed.yaml
clear
vim ios_testbed.yaml 
ls
cat ios_testbed.yaml 
clear
ls
vim basic_link.py
python basic_link.py 
vim basic_link.py
python basic_link.py 
vim basic_link.py
python basic_link.py 
pwd
clear
ip a
clear
ls
cd network-test-virtualenv/
ls
cd bin
ls
cd network-testing/
ls
cd networktest/
clear
cd ..
source activate
cd network-testing/networktest/
clear
ls
helloworld.py
vim helloworld.py
ls
python helloworld.py 
clear
ls
vim argadd_basic.py
python argadd_basic.py --testbed ios_testbed.yaml --vlan 50
ls
git add .
cd network-test-virtualenv/
git add .
git commit -m "argument added"
git push -U origin master
git push -u origin master
clear
ls
cd bin/network-testing/
ls
cd networktest/
ls
clear
ls
cd network-test-virtualenv/
ls
source bin/activate
ls
cd bin/
ls
cd network-testing/
ls
cd networktest/
ls
git add .
git commit -m "argument add feature for ptest"
git pusg origin master
git push origin master
history
git status
ls
git add .
git status
git commit -m "argument added"
ls
pwd
git status
git remote -v
git remote set-url origin https://github.com/Preet2fun/Ansible-server-network-automation.git
git remote origin https://github.com/Preet2fun/Ansible-server-network-automation.git
git remote origin add https://github.com/Preet2fun/Ansible-server-network-automation.git
git remote add origin https://github.com/Preet2fun/Ansible-server-network-automation
git remote -v
git push origin master
git add .
git commit -m "changes"
clear
ls
vim script_argument_demo_job.py
pyats run job script_argument_demo_job.py --testbed-file ios_testbed.yaml 
clear
pyats version check
ls
mkdir network_test_project
clear
cd network_test_project/
cp ../ios_testbed.yaml testbed.yaml
ls
vim testbed.yaml
pyats --help
pyats validate --help
pyats validate testbed --help
pyats validate testbed testbed.yaml 
vim testbed.yaml
pyats validate testbed testbed.yaml 
clear
ls
clear
ls
cd network-test-virtualenv/
ls
cd bin/
source activate
cd network-testing/
ls
cd networktest/
ls
clear
git status
ls
source network-test-virtualenv/bin/activate
ls
cd network-test-virtualenv/bin/network-testing/networktest/
ls
cd network_test_project/
ls
clear
git status
ls
cat testbed.yaml 
ls
clear
vim testbed_connection.py
vim testbed_connection.py 
s
ls
python testbed_connection.py 
python testbed_connection.py --testbed testbed.yaml
vim testbed_connection.py
clear
source network-test-virtualenv/bin/activate
cd network-test-virtualenv/bin/network-testing/networktest/
ls
cd network_test_project/
ls
clear
source network-test-virtualenv/bin/activate
cd network-test-virtualenv/bin/network-testing/networktest/
ls
cd network_test_project/
ls
vim testbed_connection.py 
python testbed_connection.py --testbed testbed.yaml
source network-test-virtualenv/bin/activate
pwd
cd network-test-virtualenv/bin/network-testing/
ls
cd networktest/
ls
cd network_test_project/
ls
clear
ls
vim connect_issue_command.py
python connect_issue_command.py --testbed testbed.yaml
vim connect_issue_command.py
python connect_issue_command.py --testbed testbed.yaml
vim connect_issue_command.py
python connect_issue_command.py --testbed testbed.yaml
vim connect_issue_command.py
python connect_issue_command.py --testbed testbed.yaml
clear
vim connect_issue_command.py
python connect_issue_command.py --testbed testbed.yaml
vim connect_issue_command.py
python connect_issue_command.py --testbed testbed.yaml
clear
python connect_issue_command.py --testbed testbed.yaml
vim connect_issue_command.py
python connect_issue_command.py --testbed testbed.yaml
vim connect_issue_command.py
python connect_issue_command.py --testbed testbed.yaml
vim connect_issue_command.py
clear
ls
source network-test-virtualenv/bin/activate
pwd
cd network-test-virtualenv/bin/network-testing/networktest/
ls
cd network_test_project/
clear
ls
cat connect_issue_command.py 
clear
git status
cd ..
ls
cd ..
ls
git add .
git commit -m "connection cheking"
git push -U origin master
git push origin master
ls
cd networktest/
ls
cd network_test_project/
ls
git add .
git commit -m "connection"
cd ..
ls
cd network_test_project/
ls
cd ..
ls
git pull
git push origin master
cd
clear
dactivate
exit
