resource "aws_lb_listener" "http" {
  load_balancer_arn = aws_lb.main.arn
  port              = 80
  protocol          = "HTTP"

  default_action {
    type = "forward"

    forward {
      target_group {
        arn    = aws_lb_target_group.cluster_01.arn
        weight = lookup(var.routing_weight, "cluster_01")
      }
      target_group {
        arn    = aws_lb_target_group.cluster_02.arn
        weight = lookup(var.routing_weight, "cluster_02")
      }
    }
  }

  tags = var.tags
}

# Precisa de dominio (e.g. route 53)
# Habilitar acm.tf e route53.tf
# resource "aws_lb_listener" "https" {
#   load_balancer_arn = aws_lb.main.arn
#   port              = 443
#   protocol          = "HTTPS"

#   ssl_policy = "ELBSecurityPolicy-2016-08"

#   certificate_arn = aws_acm_certificate.main.arn

#   default_action {
#     type = "forward"

#     forward {
#       target_group {
#         arn    = aws_lb_target_group.cluster_01.arn
#         weight = lookup(var.routing_weight, "cluster_01")
#       }
#       target_group {
#         arn    = aws_lb_target_group.cluster_02.arn
#         weight = lookup(var.routing_weight, "cluster_02")
#       }
#     }
#   }
# }