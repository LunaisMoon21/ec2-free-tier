data "aws_ami" "this" {
  most_recent = true

  filter {
    name   = "name"
    values = ["al2023-ami-2023.1.20230825.0-kernel-6.1-x86_64"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}
