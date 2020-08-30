echo "Installing Prometheus Server"

wget https://github.com/prometheus/prometheus/releases/download/v2.20.1/prometheus-2.20.1.linux-amd64.tar.gz

tar -xvf prometheus-2.20.1.linux-amd64.tar.gz

mv prometheus-2.20.1.linux-amd64 /usr/local/bin/

cp /vagrant/prometheus-setup/prometheus.service /etc/systemd/system/prometheus.service

systemctl daemon-reload

systemctl start prometheus.service

systemctl enable prometheus.service