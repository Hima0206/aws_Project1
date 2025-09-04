#!/bin/bash
# Update system and install Apache
sudo yum update -y
sudo yum install -y httpd unzip
sudo systemctl enable httpd
sudo systemctl start httpd

# Download and deploy SiteB
cd /var/www/html
sudo wget https://www.tooplate.com/zip-templates/2132_clean_work.zip -O siteB.zip
sudo unzip siteB.zip -d siteB
sudo chown -R apache:apache siteB
sudo chmod -R 755 siteB
