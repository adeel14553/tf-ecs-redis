output "aws_ecr_repository" {
    value = aws_ecr_repository.tf_ecr.name
    # value = aws_ecr_repository.tf-ecr.id

}