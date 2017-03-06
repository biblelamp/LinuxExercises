# download and install
antname=${antname}
antserver=http://apache-mirror.rbc.ru/pub/apache
antversion=1.10.1
wget ${antserver}/ant/binaries/${antname}-${antversion}-bin.tar.gz
sudo tar xvfvz ${antname}-${antversion}-bin.tar.gz -C /opt
sudo ln -sfn /opt/${antname}-${antversion} /opt/ant
sudo sh -c 'echo ANT_HOME=/opt/ant >> /etc/environment'
sudo ln -sfn /opt/ant/bin/ant /usr/bin/ant

# check installation
ant -version

# cleanup
rm ${antname}-${antversion}-bin.tar.gz