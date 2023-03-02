resource "aws_instance" "ec2_instance" {
  ami           = "ami-0dfcb1ef8550277af"
  instance_type = var.instance_type
  subnet_id     = aws_subnet.subnet.id
  tags          = var.ec2_tag

  
  volume_tags = {
    Name    = "pitambar"
    Owner   = "pitambar.bhadra@cloudeq.com"
    Purpose = "training"
  }
  # tags_all = var.volume_tags

}