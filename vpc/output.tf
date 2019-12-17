output "aws_security_group_mysecgroup_id" {
  value = "${aws_security_group.mysecgroup.id}"
  
}
output "aws_subnet_public_id" {
  value = "${aws_subnet.public.id}"
}
