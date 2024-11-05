variable "student_name" {
  type        = string
  default     = "heph001"  # Sett standardverdien her
  description = "Navnet på studenten"
}

variable "alarm_email" {
  type        = string
  description = "Email to receive SNS alarm notifications"
}

variable "prefix" {
  type        = string
  description = "Prefiks som brukes i ressursnavn"
}

variable "image" {
  type        = string
  description = "ECR-bildet som brukes for alarm"
}
