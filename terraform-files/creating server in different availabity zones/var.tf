variable "name1" {
  type    = string
  default = "name"
}

variable "value" {
  type    = list(string)
  default = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
}

variable "name2" {
  type    = string
  default = "virtualization-type"
}

variable "value2" {
  type    = list(string)
  default = ["hvm"]
}

variable "instance_type" {
  type    = string
  default = "t3.micro"
}

variable "availability_zone" {
  default = ["us-east-1a","us-east-1b","us-east-1c"]
}

variable "aws_instance_name" {
  type = string
  default = "Server"
}
