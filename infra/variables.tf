variable "aws_region" {
  description = "AWS region to deploy into."
  type        = string
  default     = "us-east-1"
}

variable "project_name" {
  description = "Name prefix for all resources. Every cluster, service, role and log group name is derived from this."
  type        = string
  default     = "nginx"
}

variable "container_image" {
  description = "Baseline image for the task definition. The CI/CD pipeline overrides this on each deploy."
  type        = string
  default     = "nginx:latest"
}

variable "container_port" {
  description = "Port the container listens on, also used by the ALB and security groups."
  type        = number
  default     = 80
}

variable "task_cpu" {
  description = "Fargate task CPU units."
  type        = string
  default     = "256"
}

variable "task_memory" {
  description = "Fargate task memory in MiB."
  type        = string
  default     = "512"
}

variable "desired_count" {
  description = "Number of tasks the service runs before autoscaling adjusts it."
  type        = number
  default     = 2
}

variable "min_capacity" {
  description = "Autoscaling floor."
  type        = number
  default     = 2
}

variable "max_capacity" {
  description = "Autoscaling ceiling."
  type        = number
  default     = 6
}

variable "cpu_target_value" {
  description = "Average CPU percentage the autoscaler targets."
  type        = number
  default     = 75.0
}

variable "log_retention_days" {
  description = "How long to keep container logs in CloudWatch."
  type        = number
  default     = 7
}

variable "health_check_path" {
  description = "Path the ALB polls to decide whether a task is healthy."
  type        = string
  default     = "/"
}
