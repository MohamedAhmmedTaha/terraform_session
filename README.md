# Terraform Infrastructure Setup Guide

This repository contains Terraform code to provision infrastructure on AWS.

Follow the steps below to configure AWS credentials and deploy the infrastructure successfully.

---

## Prerequisites

Make sure you have the following installed on your machine:

- Terraform
- AWS CLI
- An AWS Sandbox / AWS Account
- Linux / macOS / WSL (recommended)

---

## Step 1: Get AWS Credentials from Sandbox

From your AWS Sandbox or AWS Console, obtain the following credentials:

- AWS Access Key ID
- AWS Secret Access Key
- AWS Region (example: us-east-1) -Optional-

---

## Step 2: Configure AWS Credentials

You can configure AWS credentials using one of the following methods.

### Option 1: Using AWS CLI (Recommended)

Install AWS CLI if not installed:

sudo apt install awscli -y

Configure credentials:

aws configure

Enter:

AWS Access Key ID: <YOUR_ACCESS_KEY>  
AWS Secret Access Key: <YOUR_SECRET_KEY>  
Default region name: us-east-1  
Default output format: json

Terraform will automatically use these credentials.

---

### Option 2: Using Environment Variables (Export)

export AWS_ACCESS_KEY_ID="<YOUR_ACCESS_KEY>"  
export AWS_SECRET_ACCESS_KEY="<YOUR_SECRET_KEY>"  
export AWS_DEFAULT_REGION="us-east-1"

---

## Step 3: Clone the Repository

git clone https://github.com/<your-username>/<your-repo>.git  
cd <your-repo>

---

## Step 4: Initialize Terraform

terraform init

---

## Step 5: Review Execution Plan

terraform plan

---

## Step 6: Apply Infrastructure

terraform apply

Type:

yes

---

## Step 7: Access the Infrastructure

After apply completes, Terraform may output values such as:

- EC2 Public IP

Use the Public IP in your browser.

---

## Cleanup (Destroy Resources)

terraform destroy

---

## Author

Mohamed Ahmed Mohamed Taha
# terraform_session
