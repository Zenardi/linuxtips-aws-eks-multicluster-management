variable "project_name" {

}

variable "region" {
  default = "us-east-1"
}

variable "ssm_vpc" {

}

variable "ssm_subnets" {
  type = list(string)
}

variable "routing_weight" {
  type = object({
    cluster_01 = number
    cluster_02 = number
  })
}

variable "routed53_hosted_zone" {

}

variable "dns_name" {

}


variable "tags" {
  type = object({
    Owner = string
    Name  = string
  })
  default = {
    Owner = "ZEE8CA"
    Name  = "linuxtips-ingress"
  }
}