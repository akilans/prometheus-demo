echo "Installing Prometheus Server"

wget https://github.com/prometheus/node_exporter/releases/download/v1.0.1/node_exporter-1.0.1.linux-amd64.tar.gz

tar -xvf node_exporter-1.0.1.linux-amd64.tar.gz

mv node_exporter-1.0.1.linux-amd64 /usr/local/bin/

cp /vagrant/prometheus-setup/node-exporter.service /etc/systemd/system/node-exporter.service

systemctl daemon-reload

systemctl start node-exporter.service

systemctl enable node-exporter.service

