variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16" # Or whatever CIDR you prefer
}

variable "vpc_name" {
  description = "Name for the VPC"
  type        = string
  default     = "enterprise-eks-vpc"
}

variable "tags" {
  description = "Common tags for resources"
  type        = map(string)
  default = {
    Environment = "prod"
    Terraform   = "true"
    Project     = "Enterprise-EKS"
  }
}

variable "igw_name" {
  description = "Name of the Igw"
  type        = string
  default     = "Enterprise-Igw"
}

variable "public_route_table" {
  description = "Name of public route table"
  type        = string
  default     = "Enterprise-Public-Route-Table"
}

variable "subnet_cidr" {
  description = "Value of Subnet CIDR"
  type        = string
  default     = "10.0.1.0/24"
}

variable "aviability_zone" {
  description = "Aviability zone for public subnet"
  type        = string
  default     = "us-east-1a"
}

variable "subnet_Name1" {
  description = "Name of the public subnet 1"
  type        = string
  default     = "public-subnet-1"

}