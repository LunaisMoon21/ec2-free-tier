variable "instance-name" {
  description = "name of instance"

  type    = string
  default = null
}

variable "instance-type" {
  description = "EC2 Instance type"

  type    = string
  default = "t3.mirco"
}

variable "ami-name" {
  description = "Name of AMI"

  type    = string
  default = "al2023-ami-2023.1.20230825.0-kernel-6.1-x86_64"
}

variable "delete-protection" {
  description = "Option to enable Termination Protection"

  type    = bool
  default = false
}

variable "key-pair" {
  description = "Add Key Pair to access instance"

  type    = string
  default = null
}

variable "security-groups" {
  description = "List of Security groups to add to ec2"

  type    = list(string)
  default = []
}

variable "private-ip" {
  description = "Choose private IP to assign to instance"

  type    = string
  default = null
}

variable "user-data" {
  description = "Add user data to bootstrap instance"

  type    = string
  default = null
}

variable "tags" {
  description = "Tags to add to your instance"

  type    = map(string)
  default = {}
}

variable "root-block" {
  description = "Setup root block device outside of standard"

  type = map(string)
  default = {
    volume-type = "gp3"
    volume-szie = "20"
    encrypted   = "true"
  }
}

variable "metadata" {
  description = "Setting up metadata options for instance"

  type = map(string)
  default = {
    http-endpoint               = "true"
    http-tokens                 = "true"
    http-put-response-hop-limit = "1"
  }
}
