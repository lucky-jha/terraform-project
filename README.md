# ☁️ Terraform AWS Infrastructure

This repository contains hands-on **Infrastructure as Code (IaC)** projects built with **Terraform on AWS**.

The projects focus on provisioning and managing AWS infrastructure through Terraform, with an emphasis on understanding how cloud resources, networking, security, and compute services work together.

---

## 🚀 Projects

### 1. 🌐 AWS Static Website

📁 `proj-static-website-tf`

A Terraform project that provisions an **Amazon S3 bucket for static website hosting**.

#### Architecture

```text
                Terraform
                    │
                    ▼
              AWS S3 Bucket
                    │
             ┌──────┴──────┐
             │             │
        HTML/CSS Files   Bucket Policy
             │             │
             └──────┬──────┘
                    ▼
             Static Website
```

#### AWS Resources

- Amazon S3
- S3 Bucket Policy
- S3 Public Access Configuration

#### Terraform Concepts

- AWS Provider
- Resource Configuration
- Random Provider
- S3 Bucket Provisioning
- Bucket Policies
- Terraform State
- `terraform init`
- `terraform plan`
- `terraform apply`
- `terraform destroy`

---

### 2. 🖥️ AWS EC2 + VPC + Nginx

📁 `proj-ec2-vpc-nginx-tf`

A Terraform project that provisions an **AWS VPC, networking components, and an EC2 instance running Nginx**.

#### Architecture

```text
                         AWS
                          │
                         VPC
                          │
               ┌──────────┴──────────┐
               │                     │
         Public Subnet          Private Subnet
               │                     │
              EC2                 Resources
               │
             Nginx
               │
          Web Server
```

#### AWS Resources

- Amazon VPC
- Public Subnet
- Private Subnet
- Route Tables
- Internet Gateway
- EC2 Instance
- Security Group
- Nginx

#### Terraform Concepts

- VPC provisioning
- Subnet configuration
- Route tables
- Internet Gateway
- Security Groups
- EC2 provisioning
- Infrastructure dependencies
- Terraform resource management

---

## 📂 Repository Structure

```text
terraform-project/
│
├── proj-static-website-tf/
│
├── proj-ec2-vpc-nginx-tf/
│
└── README.md
```

---

## ⚙️ Usage

### Prerequisites

- AWS Account
- AWS CLI
- Terraform
- Git

Configure your AWS credentials before running Terraform:

```bash
aws configure
```

### Clone the repository

```bash
git clone https://github.com/lucky-jha/terraform-project.git
cd terraform-project
```

### Select a project

```bash
cd proj-static-website-tf
```

### Initialize Terraform

```bash
terraform init
```

### Validate the configuration

```bash
terraform validate
```

### Review the infrastructure plan

```bash
terraform plan
```

### Deploy

```bash
terraform apply
```

### Destroy resources

When finished testing:

```bash
terraform destroy
```

> ⚠️ Always destroy unused AWS resources to avoid unnecessary AWS charges.

---

## 🔐 Security

- AWS credentials are not stored in this repository.
- Sensitive values should not be hardcoded.
- Terraform state files should not be committed to Git.
- `.terraform/` and Terraform state files should be included in `.gitignore`.

Example:

```gitignore
.terraform/
*.tfstate
*.tfstate.*
*.tfvars
*.tfvars.json
crash.log
crash.*.log
```

---

## 🔄 Future Projects

This repository will continue to grow as I build more AWS infrastructure using Terraform.

Planned areas include:

- AWS IAM
- Advanced VPC architectures
- Load Balancers
- Auto Scaling
- Multi-tier applications
- Terraform Modules
- Remote Terraform State
- CI/CD with GitHub Actions
- Containerized infrastructure
- Kubernetes infrastructure with Terraform
