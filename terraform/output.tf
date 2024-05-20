output "ecr_repository_info" {
  value = {
    for ecr_name, ecr_instance in aws_ecr_repository.ecr :
    ecr_name => {
      arn        = ecr_instance.arn
      repository = ecr_instance.repository_url
      encryption = ecr_instance.encryption_configuration[0].encryption_type
      scan_on_push = ecr_instance.image_scanning_configuration[0].scan_on_push
    }
  }
}
