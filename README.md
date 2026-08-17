# ☁️ Terraform AWS Infrastructure

A collection of hands-on **Infrastructure as Code (IaC)** projects built with **Terraform and AWS**.

This repository documents my journey of designing, provisioning, and managing AWS infrastructure using Terraform instead of manually configuring resources through the AWS Console.

---

## 🚀 Projects

### 1. 🌐 AWS Static Website

📁 `proj-static-website-tf`

Terraform project that provisions an Amazon S3 bucket for hosting a static website.

**Architecture:**

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
