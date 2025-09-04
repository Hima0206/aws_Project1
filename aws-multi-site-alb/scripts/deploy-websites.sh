#!/bin/bash
cd /var/www/html
# SiteA
sudo wget https://www.tooplate.com/zip-templates/2137_barista_cafe.zip -O siteA.zip
sudo unzip siteA.zip -d siteA
sudo chown -R apache:apache siteA
sudo chmod -R 755 siteA

# SiteB
sudo wget https://www.tooplate.com/zip-templates/2132_clean_work.zip -O siteB.zip
sudo unzip siteB.zip -d siteB
sudo chown -R apache:apache siteB
sudo chmod -R 755 siteB
