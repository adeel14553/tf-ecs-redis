provider "aws" {
  region                  = "~/.aws/config"
  # shared_credentials_file = "/Users/tf_user/.aws/credentials"
  shared_credentials_file = "~/.aws/credentials"
  profile                 = "aws-terraform"
}

# module "ecr" {
#   source = "./modules/ecr"

#   app_name        = var.app_name
#   app_environment = var.app_environment
# }

# output "ecs-name" {
#   value = module.ecr.aws_ecr_repository
  
# }

module "s3_bucket" {
  source = "./modules/s3"
  s3_name = var.s3_name
  s3_environment = var.s3_environment
 
}
output "s3_bucket_id" {
  value = module.s3_bucket.s3_bucket_id
}