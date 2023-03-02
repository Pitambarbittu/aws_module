#s3
output "output-1" {
    value = module.vpc_ec2_s3.s3-bucket-1
  
}

output "output-2" {
    value = module.vpc_ec2_s3.s3-bucket-2
  
}

#ec2
output "output-3" {
    value = module.vpc_ec2_s3.ec2_instance_id
  
}

output "output-4" {
    value = module.vpc_ec2_s3.subnet_id
  
}

#vpc
output "output-5" {
    value = module.vpc_ec2_s3.vpc_id
  
}









