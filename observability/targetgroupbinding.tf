resource "kubectl_manifest" "mimir" {
  yaml_body = <<YAML
apiVersion: elbv2.k8s.aws/v1beta1
kind: TargetGroupBinding
metadata:
  name: mimir-nginx
  namespace: mimir
spec:
  serviceRef:
    name: mimir-nginx
    port: 80
  targetGroupARN: ${aws_lb_target_group.mimir.arn}
  targetType: instance
YAML
  depends_on = [
    helm_release.alb_ingress_controller,
    helm_release.mimir
  ]
}