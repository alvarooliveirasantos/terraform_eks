


resource "aws_internet_gateway" "main" {

  vpc_id = aws_vpc.main.id


  tags = {
    Name = "main"
  }
}
output "internet_gateway_id" {
  value       = aws_internet_gateway.main.id
  description = "aws_internet_gateway id."
  sensitive   = false



}