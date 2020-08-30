echo "Installing Alert manager"

wget https://github.com/prometheus/alertmanager/releases/download/v0.21.0/alertmanager-0.21.0.linux-amd64.tar.gz

tar -xvf alertmanager-0.21.0.linux-amd64.tar.gz

mv alertmanager-0.21.0.linux-amd64 /usr/local/bin/

cp /vagrant/prometheus-setup/alert-manager.service /etc/systemd/system/alert-manager.service

systemctl daemon-reload

systemctl start alert-manager.service

systemctl enable alert-manager.service