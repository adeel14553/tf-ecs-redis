variable "s3_name" {
  type        = string
  description = "Application Name"
}

variable "s3_environment" {
  type        = string
  description = "Application Environment"
  # default = "production"
}
