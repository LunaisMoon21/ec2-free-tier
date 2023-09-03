resource "aws_instance" "ec2" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t3.micro"

  root_block_device {
    encrypted   = var.root-block.encrypted
    volume_type = var.root-block.volume-type
  }

  metadata_options {
    http_tokens = var.metadata.http-tokens
  }
  tags = {
    Name = "HelloWorld"
  }
}
