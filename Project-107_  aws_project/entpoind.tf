resource "aws_vpc_endpoint" "endpoint-s3" {
  vpc_id          = aws_vpc.aws_project.id
  service_name    = "com.amazonaws.${var.aws_region}.s3"
#  route_table_ids = ["${aws_route_table.PrivateRT.id}"]
  vpc_endpoint_type = "Gateway"

  tags = {
    Name = "my-s3-endpoint"
  }
}
resource "aws_vpc_endpoint_route_table_association" "ft-route-table" {
  route_table_id  = aws_route_table.PrivateRT.id
  vpc_endpoint_id = aws_vpc_endpoint.tf-endpoint-s3.id
}