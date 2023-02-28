module "vpc_ec2_s3" {
  source      = "../aws_modules/vpc_ec2_s3"
  subnet_cidr = "10.0.1.0/24"
  ec2_type    = "t2.micro"

  vpc_tag = {
    Name    = "pitambar bhadra"
    Owner   = "pitambar.bhadra@cloudeq.com"
    Purpose = "training"
  }

  subnet_tag = {
    Name    = "pitambar bhadra"
    Owner   = "pitambar.bhadra@cloudeq.com"
    Purpose = "training"
  }

  ec2_tag = {
    Name    = "pitambar bhadra"
    Owner   = "pitambar.bhadra@cloudeq.com"
    Purpose = "training"

  }


  bucket_name = var.bucket_name

}