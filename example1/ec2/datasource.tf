#data source - used to find the latest ami in any region instead of going to aws to copy and paste ami ids
data "aws_ami" "amazonrhel" {
  most_recent      = true
  owners           = ["amazon"]


  filter {
    name   = "name"
    values = ["RHEL-*-41-Hourly2-GP2"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  filter {
    name   = "architecture"
    values = ["x86_64"]
}
}
