#!/bin/bash
# Update system and install Apache
sudo yum update -y
sudo yum install -y httpd unzip
sudo systemctl enable httpd
sudo systemctl start httpd

# Download and deploy SiteA
cd /var/www/html
sudo wget https://www.tooplate.com/zip-templates/2137_barista_cafe.zip -O siteA.zip
sudo unzip siteA.zip -d siteA
sudo chown -R apache:apache siteA
sudo chmod -R 755 siteA
