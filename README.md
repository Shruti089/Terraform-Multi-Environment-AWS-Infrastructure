# Terraform-Multi-Environment-AWS-Infrastructure

This project is in aws_infra , the multi environment aws infrastructure

📖 Project Overview

  This project demonstrates how to design, provision, and manage a complete multi-environment AWS infrastructure using Terraform, following real-world DevOps practices.

  The infrastructure is divided into Development, Staging, and Production environments with isolated resources, ensuring scalability, security, and environment parity.

🏗️ Architecture Overview

  Each environment contains:

  Amazon S3 – Object storage for application assets

  Amazon EC2 – Compute instances for application workloads

  Amazon RDS (DB) – Managed database service

  VPC (Dev) – Network isolation and control

  Terraform Modules – Reusable and clean infrastructure code

📦 Production is scaled with multiple EC2 instances and S3 buckets to simulate real-world traffic handling.

🌍 Environments Breakdown
🔹 Development (DEV)

  Single EC2 instance

  S3 bucket

  Database

  Custom VPC

  Used for active development and testing

🔹 Staging (STG)

  Production-like setup

  EC2 + S3 + DB

  Used for final testing before release

🔹 Production (PRD)

  Multiple EC2 instances (high availability)

  Multiple S3 buckets

  Dedicated database

  Designed for scalability and reliability

⚙️ Tools & Technologies Used

  Terraform

  AWS (EC2, S3, RDS, VPC)

  Infrastructure as Code (IaC)

  Modular Terraform Design

  Environment Isolation

🚀 Key Learnings

  Multi-environment infrastructure design

  Terraform modules & reusability

  Environment-specific variables

  AWS networking & resource isolation

  Production-ready DevOps mindset
