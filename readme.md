# Prometheus Demo

The Prometheus monitoring system and time series database
Infrastructure monitoring using Node Exporter
Alerting using Alert Manager

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for monitoring infrastructure using Prometheus, Node exporter and Alert Manager.

### Prerequisites

What things you need to test this setup

* [VirtualBox](https://www.virtualbox.org/) - Virualbox to run vms
* [Vagrant](https://www.vagrantup.com/) - Vagrant tool to provison/manage vms


### Folder and Files
* Vagrantfile - Runnning 2 ubuntu machines called ubuntu_1 and ubuntu_2
* ubuntu_1 - Prometheus server + Alert Manager + Node exporter
* ubuntu_2 - Node Exporter - Node machine to be monitored by ubuntu_1 machine
* prometheus-setup - This folder has provision scripts to install and configure service for prometheus, node exporter and Alert Manager

### Up & Running Prometheus

Follow the steps to run the Prometheus in your local machine

Execute these steps from root directory of this folder

```bash
vagrant up
```

The Above command,
* Spin up 2 VMs
* Install prometheus, Node exporter and Alert Manager on ubuntu_1
* Install Node exporter on ubuntu_2

Access http://192.168.33.10:9090/ from host machine to see the prometheus dashboard

## Configure Rules and Alerts
* Refer prometheus-rules.yml for cutom rules and alerts 
* Refer alertmanager.yml file 
* Configure mail configuration
* [Gmail Account](https://myaccount.google.com/)

## Reference
* [Alert Manager Configuration](https://grafana.com/blog/2020/02/25/step-by-step-guide-to-setting-up-prometheus-alertmanager-with-slack-pagerduty-and-gmail/)