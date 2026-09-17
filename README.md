# AWS Lambda with Terraform

This project creates one AWS Lambda function using Terraform.

## Folder structure

- `versions.tf` - Terraform version and provider versions
- `provider.tf` - AWS provider configuration
- `variables.tf` - input variables
- `data.tf` - Lambda packaging
- `iam.tf` - IAM role and permissions
- `lambda.tf` - Lambda function resource
- `outputs.tf` - outputs after apply
- `src/lambda_function.py` - Python code for Lambda

## Important

Before running Terraform, make sure:

1. Terraform is installed.
2. AWS CLI is installed.
3. You configured AWS credentials.

Example:

```powershell
aws configure
```

## Deploy

From the `terraform-lambda` folder:

```powershell
copy terraform.tfvars.example terraform.tfvars
terraform init
terraform plan
terraform apply
```

## Test the Lambda

```powershell
aws lambda invoke --function-name hello-lambda --payload '{"key":"value"}' output.json
Get-Content output.json
```

## Destroy

```powershell
terraform destroy
```
