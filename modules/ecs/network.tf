resource "aws_ecs_cluster" "cluster" {
  name = "tf-ecs-cluster-1"
}
resource "aws_vpc" "aws-vpc" { 
  cidr_block = "10.0.0.0/16" 
  enable_dns_hostnames = true
}