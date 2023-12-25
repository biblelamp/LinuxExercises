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

## Complete guide to migrating from HTTP to HTTPS (RUS) [link](https://habr.com/ru/articles/332294/)

## How to configure Apache virtual hosts on CentOS 7 (RUS) [link](https://routerus.com/how-to-set-up-apache-virtual-hosts-on-centos-7/)

Create /etc/httpd/conf.d/example.com.conf:
```
<VirtualHost *:80>
    ServerName example.com
    ServerAlias www.example.com
    ServerAdmin webmaster@example.com
    DocumentRoot /var/www/example.com/public_html

    <Directory /var/www/example.com/public_html>
        Options -Indexes +FollowSymLinks
        AllowOverride All
    </Directory>

    ErrorLog /var/log/httpd/example.com-error.log
    CustomLog /var/log/httpd/example.com-access.log combined
</VirtualHost>
```

Verify the syntax of the configuration file:
```
sudo apachectl configtest
```

If Syntax OK - restart Apache service:
```
sudo systemctl restart httpd
```

## Configuring Apache on CentOS 7 (include https & ftp) (RUS) [link](https://uchet-jkh.ru/i/nastroika-apache-na-centos-7/)

## Install Certbot (Apache && Pip) [link](https://certbot.eff.org/instructions?ws=apache&os=pip)