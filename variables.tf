variable "access_key" {
  description = "AWS ACCESS_KEY"
}

variable "secret_key" {
  description = "AWS SECRET_KEY"
}

variable "aws_region" {
  description = "AWS region to launch servers."
  default     = "us-east-2"
}

variable "cidr_block" {
  description = "CIDR for the whole VPC"

  default = {
    prod = "10.10.0.0/16"
    dev  = "10.20.0.0/16"
  }
}

variable "eks_cluster_name" {
  description = "cluster name"
  default     = "demo-k8"
}

variable "identifier" {
  description = "Identifier for DB"
  default     = "demo-k8-db"
}

variable "storage_type" {
  description = "Type of the storage ssd or magnetic"
  default     = "gp2"
}

variable "allocated_storage" {
  description = "ammount of storage allocated in GB"

  default = {
    prod = "10"
    dev  = "10"
  }
}

variable "db_engine" {
  description = " DB engine"
  default     = "postgres"
}

variable "engine_version" {
  description = "DB engine version"
  default     = "11.10"
}

variable "instance_class" {
  description = "mashine type to be used"

  default = {
    prod = "db.t2.micro"
    dev  = "db.t2.micro"
  }
}

variable "db_username" {
  description = "db admin user"
  default     = "root"
}

variable "db_password" {
  description = "password, provide through your tfvars file"
}
