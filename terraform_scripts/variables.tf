# Sets global variables for this Terraform project.

variable app_name {
  default = "sit722projpart5"
  type = string
}

variable location {
  default = "australiasoutheast"
  type = string
}

variable kubernetes_version {   
  default = "1.31.0"
  type = string
}