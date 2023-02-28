variable "vpc_cidr" {
  default     = "10.0.0.0/16"
  description = "cidr block for vpc"
  type        = string

}

variable "vpc_tag" {
  default = {
    Name = "pitambar-vpc"
  }
  description = "tag for vpc"
  type        = map(string)

}

#------------------------------------------------------------------------------------------------

variable "subnet_cidr" {
  default     = "10.0.1.0/24"
  description = "cidr block for vpc"
  type        = string
}


variable "subnet_az" {
  default     = "us-east-1a"
  description = "availability zone for vpc subnet"
  type        = string
}


variable "subnet_tag" {
  default = {
    Name = "pitambar-subnet"
  }
  description = "tag for vpc subnet"
  type        = map(string)

}

#-------------------------------------------------------------------------------------
variable "ec2_type" {
  # default = "t2.micro"
  description = "EC2 instance type to use for the instance"
  type        = string


}
variable "instance_type" {
  type    = string
  default = "t2.micro"

}

variable "ec2_tag" {
  default = {
    Name = "pitambar-ec2"
  }
  description = "tag to apply to the instance"
  type        = map(string)

}

#-------------------------------------------------------------------------------------------------------

variable "bucket_name" {
  type        = string
}