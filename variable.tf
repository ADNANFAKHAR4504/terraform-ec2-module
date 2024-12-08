variable "ec2_count" {
  description = "number of ec2 instances"
  type        = number
  default     = 1
}

variable "instance_type" {
  description = "ec2 instance type"
  type        = string
  default     = "t3.micro"
}

variable "allow_ip_http" {
  description = "specific ip allowd for http(80)"
  type        = string
}

variable "region" {
  description = "region to deploy ec2"
  type        = string
}
variable "ami_map" {
  description = "map of ami's for different ec2 instances"
  type        = map(string)
  default = {
    "ubuntu" = "ami-0e2c8caa4b6378d8c"
    "amazon" = "ami-064003f0df2d1aded"
    "mac" = "ami-0e2c8caa4b6378d8c"
    "linux" = "ami-064003f0df2d1aded"
    "ubuntu-2" = "ami-0e2c8caa4b6378d8c"
  }
}



