variable "region" {
  default = "us-east-1"
}

variable "projectName" {
  default = "tech-challenge"
}

variable "authMode" {
  default = "API_AND_CONFIG_MAP"
}

variable "instanceType" {
  default = "t3a.medium"
}

variable "accountIdVoclabs" {
  default = "922293373182"
}

variable "policyArn" {
  default = "arn:aws:eks::aws:cluster-access-policy/AmazonEKSClusterAdminPolicy"
}

variable "vpcCidr" {
  default = "172.31.0.0/16"
}

variable "accessEntryType" {
  default = "STANDARD"
}

variable "accessScope" {
  default = "cluster"
}