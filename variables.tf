variable "instance_name" {
  description = "EC2 Instance type Name"
  type        = string
  default = "web-host"
}

variable "instance_type" {
  description = "EC2 Instance type"
  type        = string
  default = "t3.micro"
}

variable "key_name" {
  description = "SSH Key pairs"
  type        = string
  default = "id_rsa"
}

variable "ami_ubuntu" {
  description = "Amazon Machine Image"
  type        = string
  default = "ami-0faab6bdbac9486fb"
}

variable "ami_amazon" {
  description = "Amazon Machine Image"
  type        = string
  default = "ami-0a23a9827c6dab833"
}