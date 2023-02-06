output "vpc" {
  value = aws_vpc.myvpc.id
}

output "pubsub" {
  value = aws_subnet.public_subnet.public_subnet
}

output "privsub" {
  value = aws_subnet.private_subnet.private_subnet
}

