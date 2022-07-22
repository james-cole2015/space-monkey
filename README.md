# space-monkey
This is the next iteration of terraform configuration from [terraform_repo](https://github.com/james-cole2015/terraform_repo.git). I'll demonstrate additional skills through adding some features and security to the inital configuration. The goals below are not a complete list of goals. I will add what I consider minor goals to this repo. When I decide that I've evolved the design enough, I'll close the repo and start another iteration of the repo. 


### Repo Goals: 
- [x] Add in EBS Volume
- [X] Add S3 bucket
- [x] Output EC2 public IP address
- [x] Secure SSH by limiting to hosted IP
- [X] Add security through a second EC2 instance acting as a bastion host

### High Level Commits: 
- Added an EBS volume and attached it to the EC2 instance
- Added security through allowing ssh only from the ip hosting terraform
- Add an output to display EC2 public IPv4 address
- Added an output string to make copy/paste easier
  - Added the ssh command required to log into newly created infrastructure
- Added an S3 bucket (private, monitoring enabled)
- Added repo-name variable in root and all modules
