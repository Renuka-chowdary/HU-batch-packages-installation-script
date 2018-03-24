#!/bin/bash
apt-get remove libappstream3
apt-get update
apt-get upgrade -y
apt-get install curl vim wget -y
#curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
curl -sL https://deb.nodesource.com/setup_x.x | sudo -E bash -
#sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

#pass=$(makepasswd --chars 16)
#sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password password root'
#sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password root'

echo mysql-server mysql-server/root_password select root | debconf-set-selections
echo mysql-server mysql-server/root_password_again select root | debconf-set-selections
apt-get install -y build-essential tcl docker.io default-jre default-jdk maven git \
python3 python-pip python-dev build-essential python3-pip redis-server nodejs \
ruby-full mysql-server nginx git npm
npm install -g gulp \
-g grunt-cli \
-g n
gem install jekyll sass
#sudo apt-get install -y kdiff3
#sudo apt-get install -y meld
pip install django && pip3 install django
pip install --upgrade virtualenv \
awscli
#npm install -g grunt-cli
#gem install sass
npm cache clean -f -y
#npm install -g n 
dpkg -i *.deb
apt-get install -f
for file in *.tar.gz ; do tar xzfv $file ; done
#tar -xzvf  eclipse-*
unzip android*.zip
#chmod -R 760 .
chown -R $USER:$GROUP .

cd pycharm-* && sh bin/pycharm.sh && cd ..
#cd redis-stable && 


#cd eclipse-installer && ./eclipse-inst && cd ..

cd android-* && sh bin/studio.sh && cd ..

#chown -R $USER:$GROUP .


