output "s3_bucket_id" {
    value = aws_s3_bucket.tf_s3.id
    # value = aws_ecr_repository.tf-ecr.id

}