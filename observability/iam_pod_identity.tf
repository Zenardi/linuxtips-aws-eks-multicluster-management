resource "aws_eks_pod_identity_association" "mimir" {
  cluster_name    = aws_eks_cluster.main.name
  namespace       = "mimir"
  service_account = "mimir"
  role_arn        = aws_iam_role.mimir_role.arn
}

resource "aws_eks_pod_identity_association" "mimir_ruler" {
  cluster_name    = aws_eks_cluster.main.name
  namespace       = "mimir"
  service_account = "mimir-ruler"
  role_arn        = aws_iam_role.mimir_role.arn
}