output "subnet_id" {
    description = "The ID for the created subnet"
    value = aws_subnet.this.id
}