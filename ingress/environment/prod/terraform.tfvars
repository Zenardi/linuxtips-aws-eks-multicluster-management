project_name = "linuxtips-ingress"
ssm_vpc      = "/linuxtips-vpc/vpc/id"
ssm_subnets = [
  "/linuxtips-vpc/subnets/public/us-east-1a/linuxtips-public-1a",
  "/linuxtips-vpc/subnets/public/us-east-1b/linuxtips-public-1b",
  "/linuxtips-vpc/subnets/public/us-east-1c/linuxtips-public-1c"
]

routing_weight = {
  cluster_01 = 50
  cluster_02 = 50
}

routed53_hosted_zone = "123" # Hosted Zone Id
dns_name             = "*.zenardi.com.br"