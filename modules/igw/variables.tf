variable "vpc_id" {
    description = "The VPC ID to attach the Internet Gateway to"
    type = string
}

variable "tags" {
    description = "Tags for the Internet Gateway"
    type = map(string)
}

variable "igw_name" {
    description = "Name tag for the Internet Gateway"
    type = string
}