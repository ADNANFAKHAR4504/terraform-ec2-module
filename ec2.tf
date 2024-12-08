#### instance####
resource "aws_instance" "my-terraform-instance" {
  ami                    = var.ami_map[keys(var.ami_map)[count.index]]
  instance_type          = var.instance_type
  count                  = var.ec2_count
  vpc_security_group_ids = [aws_security_group.ec2-sg.id]

  lifecycle {
    create_before_destroy = true
    prevent_destroy       = false
    ignore_changes        = [tags]
  }

  tags = {
    Name        = "Instance ${count.index + 1}"
    Managedby   = "Terraform"
    Environment = "dev ${count.index + 1}"
    Client      = "adnan ${count.index + 1}"
  }
}
