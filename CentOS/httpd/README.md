## To install the Apache server:
```
sudo yum install httpd 
```

## To starting and enabling Apache services:
```
sudo systemctl start httpd
sudo enable httpd
```

## To create index.html:
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

## Place this file in the required directory:
```
cd /var/www/html
```