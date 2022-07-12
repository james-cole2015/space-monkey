# space-monkey
Repo Goals: 
- [ ] Refactor Terraform code into more efficient security group rules
- [ ] Create load balancer and auto-scaling group to deploy more instances to run webserver
- [x] Add in EBS Volume
- [ ] Add S3 bucket
- [x] Output EC2 public IP address
- [x] Secure SSH by limiting to hosted IP

High Level Commits: 
- Added an EBS volume and attached it to the EC2 instance
- Added security through allowing ssh only from the ip hosting terraform
- Add an output to display EC2 public IPv4 address
- Added an output string to make copy/paste easier
  - Added the ssh command required to log into newly created infrastructure
