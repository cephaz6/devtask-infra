variable "project_name" {
  description = "Project name used for tagging"
  type = string
  default = "devtask"
}

variable "vpc_cidr" {
  description = "CIDR block for the vpc"
  type = string
  default = "10.0.0.0/16"
}

variable "public_subnet_cidrs" {
  description = "CIDR block for public subnets"
  type = list(string)
  default = [ "10.0.1.0/24", "10.0.2.0/24" ]
}

variable "app_subnet_cidrs" {
  description = "CIDR block for app subnets"
  type = list(string)
  default = [ "10.0.10.0/24", "10.0.11.0/24" ] 
}

variable "db_subnet_cidrs" {
  description = "CIDR block for database subnets"
  type = list(string)
  default = [ "10.0.20.0/24", "10.0.21.0/24"]
}

variable "availability_zones" {
  description = "Availability zones to use"
  type = list(string)
  default = [ "eu-west-2a", "eu-west-2b" ]
}

variable "db_name" {
  description = "Name of the database"
  type        = string
  default     = "devtask"
}

variable "db_username" {
  description = "Database master username"
  type        = string
  default     = "devtask_admin"
}