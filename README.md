# Terraform AWS EC2 Deployment

This project uses [Terraform](https://www.terraform.io/) to deploy an EC2 instance on AWS and is integrated with [GitHub Actions](https://docs.github.com/en/actions) for automated CI/CD deployment.

## Project Structure

```
.
├── .github/workflows/terraform.yml   # GitHub Actions workflow for Terraform
├── backend.tf                         # Terraform backend configuration (if used)
├── main.tf                            # Main resource definition (EC2 instance)
├── outputs.tf                         # Output values (e.g., instance IP)
├── provider.tf                        # AWS provider configuration
├── variables.tf                       # Input variables
└── .gitignore                         # Git ignore file
```

## What It Does

- Provisions an EC2 instance (`t2.micro` by default) in the `us-west-2` AWS region.
- Uses GitHub Actions to automate the Terraform workflow:
  - Initialize Terraform
  - Generate and display execution plan
  - Apply changes on `main` branch push

## Requirements

- Terraform v1.0.11
- AWS CLI configured locally for manual deployment (optional)
- GitHub repository secrets:
  - `AWS_ACCESS_KEY_ID`
  - `AWS_SECRET_ACCESS_KEY`

## Usage

### 1. Clone the Repository

```bash
git clone https://github.com/PasinduWaidyarathna/terraform-aws-ec2-pipeline.git
cd terraform-aws-ec2-pipeline
```

### 2. Configure Variables

Modify `variables.tf` if you need a different instance type or AMI.

### 3. Add AWS Credentials

In your GitHub repo:

1. Go to **Settings > Secrets and variables > Actions**
2. Add the following secrets:
   - `AWS_ACCESS_KEY_ID`
   - `AWS_SECRET_ACCESS_KEY`

### 4. Commit & Push

```bash
git add .
git commit -m "Initial Terraform EC2 deployment"
git push origin main
```

This triggers the GitHub Actions workflow to deploy your EC2 instance.

## Outputs

After deployment, you’ll see:

- `instance_id`: The ID of the created EC2 instance
- `instance_public_ip`: The public IP of the instance

## Clean Up

To destroy the EC2 instance:

```bash
terraform destroy
```
