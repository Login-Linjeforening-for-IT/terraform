variable "login" {
  type        = string
  description = "login.no domain name"
  default     = "login.no"
}

variable "logout" {
  type        = string
  description = "logout.no domain name"
  default     = "logout.no"
}

variable "onprem_mgmt_ip" {
  type        = string
  description = "The IP of the onprem management server"
  default     = "128.39.140.144"
}

variable "onprem_ip" {
  type = string
  description = "The IP of the onprem proxy"
  default = "128.39.142.138"
}

variable "ofprem_ip" {
  type = string
  description = "The IP of the offprem server"
  default = "57.129.124.84"
}
