variable "instance_type" {
  description = "The type of instance to create"
  type        = string
  default     = "t2.small"
}

variable "ami_id" {
  description = "The AMI ID to use for the instance"
  type        = string
  default     = "ami-05572e392e80aee89"
}
