# Multi-Site Web Hosting on AWS with ALB & Auto Scaling

This project demonstrates hosting **two different websites** on AWS EC2 instances using **Application Load Balancer (ALB)** with **path-based routing** and **Auto Scaling Groups (ASG)**.

---

## Features
- **Two websites:** SiteA & SiteB hosted on separate EC2 instances.
- **Path-based routing:** ALB routes `/siteA/*` → Site A, `/siteB/*` → Site B.
- **Auto Scaling:** Automatically replaces unhealthy instances.
- **Launch Templates & User Data:** Scripts automate Apache installation and website deployment

---

## Deployment Steps

1. **Create Target Groups** in AWS:
   - TG1 → SiteA instances (port 80)
   - TG2 → SiteB instances (port 80)

2. **Create Launch Templates**:
   - Use `siteA-user-data.sh` for SiteA instances
   - Use `siteB-user-data.sh` for SiteB instances

3. **Create Auto Scaling Groups (ASG)**:
   - Associate each ASG with its Launch Template and respective Target Group

4. **Configure ALB**:
   - Listener on port 80
   - Rules:
     - `/siteA/*` → Forward to TG1
     - `/siteB/*` → Forward to TG2
   - Default → TG1 (or any fallback)

5. **Verify Health**:
   - All EC2 instances should turn **healthy** in Target Groups
   - Access the websites:
     - `http://<ALB-DNS>/siteA/` → Site A
     - `http://<ALB-DNS>/siteB/` → Site B

---

## Skills Demonstrated
- AWS EC2, ALB, Target Groups
- Auto Scaling Groups
- Launch Templates & User Data
- Apache Web Server
- Bash Scripting
- DevOps automation

---
Multi-Site Web Hosting with AWS ALB & Auto Scaling

This project demonstrates the deployment of two different websites on AWS private EC2 instances, using an Application Load Balancer (ALB) and Auto Scaling Groups (ASG) to ensure high availability, scalability, and fault tolerance. It highlights modern AWS best practices for hosting multiple web applications with path-based routing.

Key Components:
1. EC2 Instances
•	Two private instances host separate websites (SiteA and SiteB).
•	Apache HTTP Server configured to serve files from /var/www/html/siteA and /var/www/html/siteB.
2. Application Load Balancer (ALB)
•	Listens on HTTP port 80.
•	Implements path-based routing:
(a)	. /siteA/* → routes traffic to Site A target group
             (b). /siteB/* → routes traffic to Site B target group
•	Performs health checks to ensure only healthy instances receive traffic.

3. Target Groups
•	Separate target groups for each website to manage traffic efficiently.
•	Monitors instance health and supports ASG scaling.
4. Auto Scaling Group (ASG)
•	Ensures desired number of instances are always running.
•	Automatically replaces unhealthy instances, maintaining uptime.
•	Launch template includes user data scripts to deploy website files and configure Apache automatically.

Features
•	High Availability: Multiple instances across different Availability Zones.
•	Scalability: ASG dynamically adjusts the number of instances based on demand.
•	Path-Based Routing: Single ALB serves multiple websites with separate target groups.

Automation: User data scripts ensure instances are ready to serve websites upon launch.

Outcome
Both websites are accessible via ALB using path-based URLs:
http://<ALB-DNS>/siteA/ → Site A
http://<ALB-DNS>/siteB/ → Site B
Instances in the ASG consistently pass health checks, ensuring reliable traffic routing.
Fully automated setup enables zero-downtime scaling and quick recovery from failures.
This project helped me strengthen skills in AWS infrastructure, load balancing, automation, and web hosting best practices.
#AWS #DevOps #CloudComputing #WebHosting #LoadBalancer #AutoScaling #Apache #InfrastructureAsCode


## Demo
- ALB URL: `http://project-alb-24921886.us-east-1.elb.amazonaws.com`
