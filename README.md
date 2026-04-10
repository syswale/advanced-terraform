# AWS Infrastructure as Code — Terraform + GitHub Actions

Production-grade cloud infrastructure built with modular Terraform and automated via GitHub Actions CI/CD. Built to scale across environments without touching the console.

---

## What's in here

- **Custom VPC Module** — Reusable networking blueprint (VPC, subnets, Internet Gateway). Write once, deploy anywhere.
- **Remote State Backend** — State stored in S3 with DynamoDB locking. No local state files, no race conditions, safe for teams.
- **Automated CI/CD Pipeline** — GitHub Actions runs `terraform plan` on every push. Infrastructure changes are validated before they ever touch AWS.
- **Security by default** — IAM least-privilege, no hardcoded credentials, state encrypted at rest.

---

## Stack

| Layer | Tool |
|---|---|
| Cloud | AWS |
| IaC | Terraform v1.5+ |
| CI/CD | GitHub Actions |
| State Backend | S3 + DynamoDB |

---

## Structure
``` text
.
├── .github/workflows/   # CI/CD pipeline
├── modules/vpc/         # Reusable networking module
├── main.tf              # Root config
├── variables.tf         # Input variables
└── outputs.tf           # Exported resource attributes
```

## Author

**Olawale Abdulrahman Ojuromi**  
Cloud Automation Engineer — AWS & Terraform  
[Email](abdulrahmanojuromi@gmail.com)
