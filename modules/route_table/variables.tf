variable "vpc_id" {
    description = "This is VPC ID attached to route table"
    type = string
}

variable "igw_id" {
    description = "Internet Gateway ID"
    type = string
}

variable "tags" {
    description = "Common tags"
    type = map(string)
}

variable "route_table_name" {
    description = "Name of the route table"
    type = string
}