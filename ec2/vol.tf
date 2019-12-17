resource "aws_ebs_volume" "vol1" {
  availability_zone = "us-east-1a"
  size = 10
  tags={
    Name = "add_vol_of_ubuntu"
  }
}
resource "aws_volume_attachment" "ebs_att" {
  device_name = "/dev/sdh" 
  volume_id = "${aws_ebs_volume.vol1.id}"
  instance_id ="${aws_instance.myec2.id}"
}
