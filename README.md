# space-monkey
Repo Goals: 
1) Refactor Terraform code into more efficient security group rules
2) Create load balancer and auto-scaling group to deploy more instances to run webserver

High Level Commits: 
- Added an EBS volume and attached it to the EC2 instance
- Added security through allowing ssh only from the ip hosting terraform
