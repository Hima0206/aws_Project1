#!/bin/bash
sudo yum update -y
sudo yum install -y httpd unzip
sudo systemctl enable httpd
sudo systemctl start httpd
