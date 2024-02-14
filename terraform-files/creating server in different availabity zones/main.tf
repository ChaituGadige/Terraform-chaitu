data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = var.name1
    values = var.value
  }

  filter {
    name   = var.name2
    values = var.value2
  }

  owners = ["099720109477"]
}

resource "aws_instance" "web" {
  count         = length(var.availability_zone)
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.instance_type
  availability_zone = var.availability_zone[count.index]

} 
