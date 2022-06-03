wget -q -c -nc https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip
unzip -qq -n ngrok-stable-linux-amd64.zip
sudo -i
apt-get install -qq -o=Dpkg::Use-Pty=0 openssh-server pwgen > /dev/null
echo root:persija123* | chpasswd
mkdir -p /var/run/sshd
echo "PermitRootLogin yes" >> /etc/ssh/sshd_config
echo "PasswordAuthentication yes" >> /etc/ssh/sshd_config
cd /etc/init.d/sshd start
./ngrok authtoken 3nRWBTBrLBNwoNw183wGu_6qvZ8wTVZM1BMHpi18Z4H && ./ngrok tcp 22
