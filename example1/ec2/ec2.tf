resource "aws_instance" "ec2" {
    ami = data.aws_ami.amazonrhel # ami passed as a datasource to search and use the lattest ami
    instance_type = var.inst_type # passed as a variable
    tags = {
      Name = var.ec2name #tag name passed as a variable
    }
  
}
