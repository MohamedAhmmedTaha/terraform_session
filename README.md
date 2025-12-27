# Terraform Infrastructure Setup Guide

This repository contains Terraform code to provision infrastructure on AWS.

Follow the steps below to configure AWS credentials and deploy the infrastructure successfully.

---

## Prerequisites

Make sure you have the following installed on your machine:

* Terraform
* AWS CLI
* An AWS Sandbox / AWS Account
* Linux / macOS / WSL (recommended)

---

## Step 1: Get AWS Credentials from Sandbox or StartLab

From your AWS Sandbox / StartLab or AWS Console, obtain the following credentials:

* AWS Access Key ID
* AWS Secret Access Key
* AWS Region (example: us-east-1) - Optional -

> ⚠️ **Important:** Each time you start a new Sandbox or StartLab session, you need to repeat this step to get new credentials.

---

## Step 2: Configure AWS Credentials

You can configure AWS credentials using one of the following methods.

### Option 1: Using AWS CLI (Recommended)

Install AWS CLI if not installed:

```bash
sudo apt install awscli -y
```

Configure credentials:

```bash
aws configure
```

Enter:

```
AWS Access Key ID: <YOUR_ACCESS_KEY>
AWS Secret Access Key: <YOUR_SECRET_KEY>
Default region name: us-east-1
Default output format: json
```

Terraform will automatically use these credentials.

---

### Option 2: Using Environment Variables (Export)

You can temporarily set credentials for the current session:

```bash
export AWS_ACCESS_KEY_ID="<YOUR_ACCESS_KEY>"
export AWS_SECRET_ACCESS_KEY="<YOUR_SECRET_KEY>"
export AWS_DEFAULT_REGION="us-east-1"
```

**Make it permanent:**

1. Open your bash configuration file:

```bash
vim ~/.bashrc
```

2. Add the following lines at the end:

```bash
export AWS_ACCESS_KEY_ID="<YOUR_ACCESS_KEY>"
export AWS_SECRET_ACCESS_KEY="<YOUR_SECRET_KEY>"
export AWS_DEFAULT_REGION="us-east-1"
```

3. Save and close the file, then reload the configuration:

```bash
source ~/.bashrc
# or
source ~/.zshrc
```

> ⚠️ **Reminder:** After finishing your work, **delete the credentials** from the configuration file or unset the environment variables:

```bash
unset AWS_ACCESS_KEY_ID
unset AWS_SECRET_ACCESS_KEY
unset AWS_DEFAULT_REGION
```

---

## Step 3: Clone the Repository

```bash
git clone https://github.com/<your-username>/<your-repo>.git
cd <your-repo>
```

---

## Step 4: Initialize Terraform

```bash
terraform init
```

---

## Step 5: Review Execution Plan

```bash
terraform plan
```

---

## Step 6: Apply Infrastructure

```bash
terraform apply -auto-approve
```

---

## Step 7: Access the Infrastructure

After apply completes, Terraform may output values such as:

* EC2 Public IP

Use the Public IP in your browser.

---

## Cleanup (Destroy Resources)

```bash
terraform destroy -auto-approve
```

---

## Author

Mohamed Ahmed Mohamed Taha
