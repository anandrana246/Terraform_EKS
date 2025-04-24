variable "vpc_id" {
    description = "This VPC ID where subnet will be created"
    type = string
}

variable "subnet_cidr" {
    description = "This is cidr block for subnet"
    type = string 
}

variable "tags" {
    description = "Common tags for resources"
    type = map(string)
    default = {}
}

variable "subnet_name" {
    description = "Name tag for subnet"
    type = string
}

variable "availability_zone" {
    description = "This is aviability zone for the subnet"
    type = string
}