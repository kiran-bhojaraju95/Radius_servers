resource "aws_instance" "server2" {
  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id     = var.subnet_2_id

  tags = {
    Name        = "Server2"
    Environment = "Development"
    Project     = "MyProject"
  }

  metadata_options {
    http_tokens   = "required"  # Enforces IMDSv2
    http_put_response_hop_limit = 2
    http_endpoint = "enabled"
  }
  
}
