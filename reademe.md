# Prometheus Demo

The Prometheus monitoring system and time series database
System monitoring using Node Exporter

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for testing infrastructure monitoring using Prometheus and Node exporter.

### Prerequisites

What things you need to test this setup

* [VirtualBox](https://www.virtualbox.org/) - Virualbox to run vms
* [Vagrant](https://www.vagrantup.com/) - Vagrant tool to provison/manage vms


### Folder and Files
* Vagrantfile - Runnning 2 ubuntu machines called ubuntu_1 and ubuntu_2
* ubuntu_1 - Prometheus server + Node machine to be monitored by itself
* ubuntu_2 - Node machine to be monitored by ubuntu_1 machine
* prometheus-setup - This folder has provision scripts to install and configure service for both prometheus and node exporter
### Up & Running Prometheus

Follow the steps to run the Prometheus in your local machine

Execute these steps from root directory of this folder

```bash
vagrant up
```

Access http://192.168.33.10:9090/ from host machine to see the prometheus dashboard

