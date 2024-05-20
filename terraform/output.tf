output "public-ip-address" {
  value = aws_instance.example.public_ip
}

output "repository_url"{
    value = aws_ecr_repository.ecr.repository_url
}

output "arn" {
    value = aws_ecr_repository.ecr.arn
}