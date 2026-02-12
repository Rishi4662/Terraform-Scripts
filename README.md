# 🚀 Terraform-Scripts

> Infrastructure as Code (IaC) repository containing production-ready Terraform scripts for multi-cloud deployments across AWS, Azure, and GCP.

---

## 📌 Overview

This repository contains reusable and structured Terraform scripts designed to provision and manage infrastructure across multiple cloud providers.

It includes:

- 🌩️ AWS Infrastructure Scripts  
- 🔵 Azure Infrastructure Scripts  
- 🌎 GCP Infrastructure Scripts  
- ☸️ GCP Kubernetes (GKE) Setup  
- 🛠️ Multi-cloud Use Cases  

The goal of this repository is to provide scalable and real-world Terraform implementations for different cloud environments.

---

## 🗂 Repository Structure

```
Terraform-Scripts/
│
├── AWS-TF-Script/        # AWS Infrastructure Terraform files
├── Azure-TF-Script/      # Azure Infrastructure Terraform files
├── GCP-TF-Script/        # GCP Infrastructure Terraform files
├── GCP-K8-Script/        # GCP Kubernetes (GKE) Terraform setup
│
├── .gitignore
└── README.md
```

---

## 🌍 Supported Cloud Providers

| Cloud Provider | Coverage |
|---------------|----------|
| 🟠 AWS        | VPC, EC2, Networking, IAM |
| 🔵 Azure      | Resource Groups, Networking, Compute |
| 🌎 GCP        | VPC, Compute Engine, Networking |
| ☸️ GKE        | Kubernetes Cluster Provisioning |

---

## 🛠 Tech Stack

- Terraform (HCL)
- AWS
- Microsoft Azure
- Google Cloud Platform
- Kubernetes (GKE)
- Shell Scripts

---

## ⚙️ Prerequisites

Before using these scripts, ensure you have:

- Terraform installed (>= 1.x recommended)
- Cloud CLI configured:
  - `aws configure`
  - `az login`
  - `gcloud auth login`
- Required cloud permissions

---

## 🚀 How to Use

### 1️⃣ Clone the Repository

```bash
git clone https://github.com/<your-username>/Terraform-Scripts.git
cd Terraform-Scripts
```

### 2️⃣ Navigate to Required Cloud Folder

```bash
cd AWS-TF-Script
```

### 3️⃣ Initialize Terraform

```bash
terraform init
```

### 4️⃣ Validate Configuration

```bash
terraform validate
```

### 5️⃣ Review Execution Plan

```bash
terraform plan
```

### 6️⃣ Apply Infrastructure

```bash
terraform apply
```

---

## 🔐 Best Practices Followed

- Structured cloud-wise separation
- Clean Terraform formatting
- Infrastructure isolation per provider
- Version-controlled infrastructure
- Ready for modular expansion

---

## 📊 Language Stats

- HCL – 99%
- Shell – 1%

---

## 🎯 Use Cases

This repository can be used for:

- Learning Terraform for multi-cloud environments
- Infrastructure automation practice
- Cloud & DevOps portfolio showcase
- Interview preparation
- Testing real-world deployments

---

## 📌 Future Enhancements

- Terraform Modules implementation
- Remote backend configuration (S3 / GCS / Azure Storage)
- CI/CD integration (GitHub Actions)
- Environment-based structure (dev / stage / prod)
- State management best practices

---

## 👨‍💻 Author

**Rishi Raj**  
Cloud & DevOps Engineer  
Multi-Cloud | Terraform | Kubernetes

---

## ⭐ Support

If you find this repository useful, consider giving it a ⭐ on GitHub.

---
