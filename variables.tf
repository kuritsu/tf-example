variable instance_count {
  type        = number
  description = "EC2 instance count"
  default     = 3
}

variable rds_password {
  type = string
  description = "Password for RDS"
}

variable subnet_ids {
  type = list(string)
  description = "All subnet IDs."
  default = ["subnet-0940167b0f8696a4b", "subnet-0c09f888a409246c2"]
}
