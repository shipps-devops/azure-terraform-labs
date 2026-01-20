# Azure Infrastructure Automation with Terraform

This repository contains **Infrastructure as Code (IaC)** scripts for automated resource provisioning on Microsoft Azure using Terraform.

The project demonstrates cloud engineering best practices, focusing on security, modularization, and efficient resource management.

## 🚀 Technologies
* **Terraform** (HCL)
* **Microsoft Azure** (Provider)
* **Git** (Version Control)

## 🛠️ Architecture & Features
The code automates the deployment of the following resources:
* **Resource Groups:** Logical organization of cloud resources.
* **Networking:** setup of Virtual Networks (VNet), Subnets, and Network Interfaces (NIC).
* **Security:** Implementation of Network Security Groups (NSG) for traffic control (allowing SSH on Port 22).
* **Compute:** Provisioning of Linux Virtual Machines (Ubuntu Server) with **Static Public IPs** (Standard SKU) to comply with Azure's latest policies.
* **Resilience:** Handling of regional quota errors (`SkuNotAvailable`) and multi-region adaptation strategies (West US / East US 2).

## 🔒 Security Measures
* **No Hardcoded Secrets:** Credentials are never stored in the source code.
* **Secure Input:** The `admin_password` is requested at runtime and marked as `sensitive`, ensuring it is masked in CLI logs.
* **Git Ignore:** State files (`.tfstate`) and sensitive variable files are strictly excluded from version control via `.gitignore`.

## ⚙️ How to Run

### Prerequisites
* [Terraform](https://www.terraform.io/downloads) installed.
* [Azure CLI](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli) installed and authenticated (`az login`).

### Step-by-Step

1. **Clone the repository:**
   ```bash
   git clone [https://github.com/shipps-devops/azure-terraform-labs.git](https://github.com/shipps-devops/azure-terraform-labs.git)
   cd azure-terraform-labs