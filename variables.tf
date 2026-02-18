variable "project_name" {
  description = "Project or application name used for tagging."
  type        = string
  default     = "rb-ec2-demo"
}

variable "aws_region" {
  description = "AWS region to deploy into."
  type        = string
  default     = "ap-south-1" # Mumbai (close to Kolkata)
}

variable "instance_type" {
  description = "EC2 instance type."
  type        = string
  default     = "t3.micro"
}

variable "allowed_ssh_cidr" {
  description = "CIDR allowed to SSH (22). Use your IP in production."
  type        = string
  default     = "0.0.0.0/0"
}

variable "create_key_pair" {
  description = "Whether to create an AWS key pair from a provided public key."
  type        = bool
  default     = true
}

variable "public_key_openssh" {
  description = "Your local SSH public key in OpenSSH format (e.g., from ~/.ssh/id_rsa.pub). Used if create_key_pair=true."
  type        = string
  default     = ""
  sensitive   = true
}

variable "enable_http" {
  description = "Open port 80 for Nginx test page."
  type        = bool
  default     = true
}

variable "ec2_name" {
  description = "Name tag for the EC2 instance."
  type        = string
  default     = "demo-web-1"
}

variable "additional_tags" {
  description = "Additional resource tags."
  type        = map(string)
  default     = {}
}
