variable "project_name" {
  type    = string
  default = "edion"
}
variable "service_name" {
  type    = string
  default = "initsample"
}

locals {
  env                     = "stg"
  env_long                = "staging"
  resource_prefix         = "${var.project_name}-${var.service_name}-${local.env}"
}