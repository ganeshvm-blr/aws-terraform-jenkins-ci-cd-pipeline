variable "aws_region" {
  default = "ap-south-1"
}

variable "instance_type" {
  default = "t3.micro"
}

variable "key_name" {
  description = "Existing AWS key pair name"
}

variable "ami_id" {
  description = "Ubuntu AMI ID"
  default     = "ami-0f5ee92e2d63afc18"
}
