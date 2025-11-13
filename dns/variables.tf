variable "login" {
  type        = string
  description = "login.no domain name"
  default     = "login.no"
}

variable "lb_external_ip" {
  type        = string
  description = "The external IP of the login.no load balancer"
  default     = "209.38.52.30"
}
