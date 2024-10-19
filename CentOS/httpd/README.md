# To install the Apache server
```
sudo yum install httpd 
```

## To starting and enabling Apache services
```
sudo systemctl start httpd
sudo enable httpd
```

To create index.html for index page:
```
<!DOCTYPE html>
<html>
  <head>
    <title>Welcome to Apache server</title>
  </head>
  <body>
    <p>Welcome to Apache server</p>
  </body>
</html>
```

Place this file to the required directory:
```
cd /var/www/html
```

### Opening firewall ports (if necessary: http and https)
```
sudo firewall-cmd --permanent --add-service=http
```
```
sudo firewall-cmd --permanent --add-service=https
```
```
sudo firewall-cmd --reload
```

## Creating and configuring virtual hosts

Creating a folder for **example.com** virtual host files:
```
sudo mkdir -p /var/www/example.com/html
```

Creating a **index.html** page for a virtual host:
```
<html>
  <head>
    <title>Welcome to Example.com!</title>
  </head>
  <body>
    <p>Success! The example.com virtual host is working!</p>
  </body>
</html>
```

Place **index.html** file to the suitable directory:
```
cd /var/www/example.com/html/
```

Creating a virtual host configuration file **example.com.conf**:
```
<VirtualHost *:80>
    ServerName example.com
    ServerAlias www.example.com
    DocumentRoot /var/www/example.com/html
    ErrorLog /var/www/example.com/log/error.log
    CustomLog /var/www/example.com/log/requests.log combined
</VirtualHost>
```

Place the configuration file to the suitable directory:
```
cd /etc/httpd/conf.d/
```