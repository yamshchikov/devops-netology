output "account_id" {
  value = data.aws_caller_identity.current.account_id
}

output "caller_user" {
  value = data.aws_caller_identity.current.user_id
}

output "aws_region" {
  value = data.aws_region.current.name
}

output "private_ip" {
  value = aws_instance.test[*].private_ip
}

output "subnet_id" {
  value = aws_instance.test[*].subnet_id
}