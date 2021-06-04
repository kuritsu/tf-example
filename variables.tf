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
  default = ["subnet-07531d4d50c0c33fb", "subnet-0a4706f32805f3060", "subnet-004206e701104b8aa"]
}
