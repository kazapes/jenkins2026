# Terraform configuration block
# This defines the minimum Terraform version and required providers
terraform {
  required_version = ">= 1.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
  backend "s3" {
    bucket  = "tuesdaykazapess3"                    # Name of the S3 bucket
    key     = "jenkins/jenkins-test-032226.tfstate" # The name of the state file in the bucket
    region  = "us-east-1"                           # Use a variable for the region
    encrypt = true                                  # Enable server-side encryption (optional but recommended)
  }
}

# AWS Provider configuration
# This tells Terraform how to connect to AWS
provider "aws" {
  region  = "af-south-1"
 
  # # Default tags are applied to all resources created by this provider
  # default_tags {
  #   tags = {
  #     Project     = "vpc-demo"
  #     Environment = "dev"
  #     ManagedBy   = "Terraform"
  #   }
  # }
}