# Automated ELK Stack Deployment

The files in this repository were used to configure the network depicted below.

Images/elk_cloud_network.png

These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the elk playbook may be used to install only certain pieces of it, such as Filebeat.


This document contains the following details:
- Description of the Topology
- Access Policies
- ELK Configuration
  - Beats in Use
  - Machines Being Monitored
- How to Use the Ansible Build


### Description of the Topology

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the D*mn Vulnerable Web Application.

Load balancing ensures that the application will defend against DDoS attacks, in addition to restricting an overload of traffic to the network.

Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to data and system logs.

The configuration details of each machine may be found below.

| Name     | Function          | Ip Address | Operating System |
|----------|-------------------|------------|------------------|
| Jump Box | Gateway           | 10.0.0.4   | Linux            |
| Web 1    | Webserver         | 10.0.0.5   | Linux            |
| Web 2    | Webserver         | 10.0.0.6   | Linux            |
| Web 3    | Webserver         | 10.0.0.7   | Linux            |
| Elk      | Manage Web Server | 10.1.0.4   | Linux            |
|          |                   |            |                  |

### Access Policies

The machines on the internal network are not exposed to the public Internet. 

Only the Jump Box machine can accept connections from the Internet. Access to this machine is only allowed from the following IP address: 67.180.154.30

Machines within the network can only be accessed by 10.0.0.4.

A summary of the access policies in place can be found in the table below.

| Name     | Publicly Accessible | Allowed Ip Address |
|----------|---------------------|--------------------|
| Jump Box | Yes                 | 67.180.154.30      |
| Web 1    | No                  | 10.0.0.4           |
| Web 2    | No                  | 10.0.0.4           |
| Web 3    | No                  | 10.0.0.4           |
| Elk      | No                  | 10.0.0.4           |
|          |                     |                    |

### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because it allows configuration across multiple machinces simutaneously.

The playbook implements the following tasks:
- Install docker.io
- Install pip3
- Install Docker python module
- download and launch a docker elk containere

The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.

(Images/docker_ps_output.png)

### Target Machines & Beats
This ELK server is configured to monitor the following machines:
-  Web1: 10.0.0.5 
-  Web2: 10.0.0.6
-  Web3: 10.0.0.6

We have installed the following Beats on these machines:
- Filebeat
- Metricbeat


These Beats allow us to collect the following information from each machine:
- Filebeat collects system logs, which we use to monitor log data.
- Metricbeat collects metrics from operating systems, which we use to monitor services and systems runming on the server. 

### Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned: 

SSH into the control node and follow the steps below:
- Copy the elk_playbook.yml file to /etc/ansible.
- Update the hosts file to include elk group along with the Elk VM IP address. 
- Run the playbook, and navigate to the following link http://[your.VM.IP]:5601/app/kibanato check that the installation worked as expected.
