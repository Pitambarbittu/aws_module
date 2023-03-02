output "vpc_id" {
  value = aws_vpc.vpc.id

}

output "subnet_id" {
  value = aws_subnet.subnet.id

}

#--------------------------------------------------------------------------------------------------------------

output "ec2_instance_id" {
  value = aws_instance.ec2_instance.id

}

#---------------------------------------------------------------------------------------------------------------

output "s3-bucket-1" {
  value = aws_s3_bucket.s3-bucket.bucket
}

output "s3-bucket-2" {
  value = aws_s3_bucket.s3-bucket.tags
}