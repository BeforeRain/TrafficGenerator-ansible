# TrafficGenerator-ansible

## What is this project for?
deploy/run/stop (TrafficGenerator)[https://github.com/HKUST-SING/TrafficGenerator] on the testbed using ansible.

## How do I get set up?
* set the Groups into `hosts` file
* set variables into `group_vars/all/vars.yaml`
* copy your own configuration file into `run_clients/files/`. It has to be named consistently with the corresponding variable in `group_vars/all/vars.yaml` 

## How do I run it?
`$ git clone git@github.com:filippo91/TrafficGenerator-ansible.git`

`$ cd TrafficGenerator-ansible`

To deploy (get the code, build and start servers):

`$ ansible-playbook -i hosts roles/deploy.yaml`

To run the clients (it checks if servers are up, otherwise it will starts the servers as well):

`$ ansible-playbook -i hosts roles/run.yaml`

To stop servers:

`$ ansible-playbook -i hosts roles/stop.yaml`
