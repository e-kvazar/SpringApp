# Note: You need to create the S3 bucket manually before using this backend,
# or comment this out for the first run and create these resources with Terraform
#TODO create secret for s3 bucket in git hub put it here(the name should be unque)

terraform {
  backend "s3" {
    bucket         = "terraform-state-spring-boot-app-kvazar-12"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    use_lockfile   = true
  }
  
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.2.0"
    }
  }
  
  required_version = "~> 1.10"
}
