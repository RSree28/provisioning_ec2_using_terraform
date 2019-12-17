
module "vpc" {
  source = "../vpc"
}

resource "aws_instance" "myec2" {
  ami = "${var.image}"
  instance_type = "t2.micro"
  availability_zone = "us-east-1a"
  vpc_security_group_ids = ["${module.vpc.aws_security_group_mysecgroup_id}"]
  #security_groups = ["sg-0d75f2a48f5cd548f"]
  subnet_id = "${module.vpc.aws_subnet_public_id}"
  key_name = "tfkey" /* Pem Key */
  tags = {
      Name = "Ubuntu"
      Provisioned = "Roja"
      Tool = "Terraform"
    }
  volume_tags = {
    Name = "myvol_myec2"
  }
  root_block_device {
   volume_size = 10
  }
}