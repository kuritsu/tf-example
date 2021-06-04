variable instance_count {
  type        = number
  description = "EC2 instance count"
  default     = 3
}

variable subnet_id {
  type = string
  description = "Subnet ID to create the instances."
}
