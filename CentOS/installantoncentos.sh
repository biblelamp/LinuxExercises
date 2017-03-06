# download and install
antversion=1.9.9
wget http://archive.apache.org/dist/ant/binaries/apache-ant-${antversion}-bin.tar.gz
sudo tar xvfvz apache-ant-${antversion}-bin.tar.gz -C /opt
sudo ln -sfn /opt/apache-ant-${antversion} /opt/ant
sudo sh -c 'echo ANT_HOME=/opt/ant >> /etc/environment'
sudo ln -sfn /opt/ant/bin/ant /usr/bin/ant

# check installation
ant -version

# cleanup
rm apache-ant-${antversion}-bin.tar.gz