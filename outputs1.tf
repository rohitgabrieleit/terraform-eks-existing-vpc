# outputs
locals {
  kubeconfig-cluster1 = <<KUBECONFIG


apiVersion: v1
clusters:
- cluster:
    server: ${aws_eks_cluster.eit-ekscluster-1.endpoint}
    certificate-authority-data: ${aws_eks_cluster.eit-ekscluster-1.certificate_authority[0].data}
  name: kubernetes
contexts:
- context:
    cluster: kubernetes
    user: aws
  name: aws
current-context: aws
kind: Config
preferences: {}
users:
- name: aws
  user:
    exec:
      apiVersion: client.authentication.k8s.io/v1alpha1
      command: aws-iam-authenticator
      args:
        - "token"
        - "-i"
        - "${var.cluster-name1}"
KUBECONFIG

}

output "kubeconfig-cluster1" {
  value = local.kubeconfig-cluster1
}


# Join configuration

locals {
  config-map-aws-auth-cluster1 = <<CONFIGMAPAWSAUTH


apiVersion: v1
kind: ConfigMap
metadata:
  name: aws-auth
  namespace: kube-system
data:
  mapRoles: |
    - rolearn: ${aws_iam_role.demo-node.arn}
      username: system:node:{{EC2PrivateDNSName}}
      groups:
        - system:bootstrappers
        - system:nodes
CONFIGMAPAWSAUTH

}

output "config-map-aws-auth-cluster1" {
value = local.config-map-aws-auth-cluster1
}

