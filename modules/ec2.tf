resource "aws_instance" "ec2" {
  ami                     = data.aws_ami.this.id
  instance_type           = var.instance-type
  private_ip              = var.private-ip
  key_name                = var.key-pair
  iam_instance_profile    = aws_iam_instance_profile.this.id
  disable_api_termination = var.delete-protection
  ebs_optimized           = true

  vpc_security_group_ids = var.security-groups

  root_block_device {
    encrypted   = var.root-block.encrypted
    volume_type = var.root-block.volume-type
  }

  metadata_options {
    http_endpoint               = var.metadata.http-endpoint
    http_tokens                 = var.metadata.http-tokens
    http_put_response_hop_limit = var.metadata.http-put-response-hop-limit
  }
  tags = {
    Name = "HelloWorld"
  }
}
