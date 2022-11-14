variable "config" {
  type = object({
    environment = string
    region      = string
    profile     = string
    projectName = string
  })
  # default = {
  #   environment = "test"
  #   profile = "test"
  #   projectName = "test"
  #   region = "us-east-1"
  # }
}