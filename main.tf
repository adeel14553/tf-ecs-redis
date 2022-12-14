# module "ecr" {
#   source = "./modules/ecr"

#   app_name        = var.app_name
#   app_environment = var.app_environment
# }


# output "ecs-name" {
#   value = module.ecr.aws_ecr_repository

# }

# module "s3_bucket" {
#   source         = "modules/s3"
#   s3_name        = var.app_name
#   s3_environment = var.s3_environment

# }
# output "s3_bucket_id" {
#   value = module.s3_bucket.s3_bucket_id
# }

# module "ecs" {
#   source = "./modules/ecs"
# }

module "ecs1" {
  source = "./modules/ecs1"
}
data "mod-ecs" "ecs1" {
  name = "mod-ecs-ecs1"  #Implicit dependencies
}

module "alb" {
  source = "./modules/alb"
  name = data.mod-ecs.ecs1.id

}

####
/* aws_ecs service with load balance and it have the alb arn. */
## How to reference on root module


module "vpc" {  
   source = "./modules/vpc"   

   config = var.config  
}




