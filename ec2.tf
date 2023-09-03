resource "aws_instance" "ec2" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t3.micro"

  root_block_device {
    encrypted = true
  }

  metadata_options {
    http_tokens = "required"
  }
  tags = {
    Name = "HelloWorld"
  }
}
