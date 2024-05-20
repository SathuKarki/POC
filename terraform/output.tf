output "repository_arns" {
  value = {
    for key, ecr_instance in aws_ecr_repository.ecr :
    key => ecr_instance.arn
  }
}
