# Amazon Linux
Exercises with Amazon Linux

## Install a web server on your EC2 instance [link](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Tutorials.WebServerDB.CreateWebServer.html)

Install the Apache web server:
```
sudo yum install httpd
```

Start the web server:
```
sudo systemctl start httpd
```

Configure the web server to start with each system boot:
```
sudo systemctl enable httpd
```

## How to configure Apache virtual hosts on CentOS 7 (RUS) [link](https://routerus.com/how-to-set-up-apache-virtual-hosts-on-centos-7/)