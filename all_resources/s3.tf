resource "aws_s3_bucket" "s3-bucket" {  
  bucket = var.bucket_name

   tags = {
    "Name"    = "pitambar"
    "Owner"   = "pitambar.bhadra@cloudeq.com"
    "Purpose" = "training"
  }
}