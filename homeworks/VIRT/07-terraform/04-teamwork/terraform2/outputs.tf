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
  value = module.ec2_cluster.private_ip
}

output "subnet_id" {
  value = module.ec2_cluster.subnet_id
}