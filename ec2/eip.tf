/* Elastic IP */
resource "aws_eip" "myeip" {
  instance = "${aws_instance.myec2.id}"
  vpc = true
  }