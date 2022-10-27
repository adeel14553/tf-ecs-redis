variable "app_name" {
  type        = string
  description = "Application Name"
}

variable "app_environment" {
  type        = string
  description = "Application Environment"
  default = "dev"
}

# variable "availability_zones" {
#   description = "List of availability zones"
# }

variable "s3_name" {
  type        = string
  description = "s3 Name"
}

variable "s3_environment" {
  type        = string
  description = "s3 Environment"
  default = "dev"
}