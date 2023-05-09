# OKE Cluster for Tutorials

[Oracle Container Engine for Kubernetes(OKE)をプロビジョニングしよう](https://oracle-japan.github.io/ocitutorials/cloud-native/oke-for-commons/) で用いる Terraform の構成ファイルです

## How to use

`variables.tf` に記載の変数を自身の環境に合わせて修正します。

```hcl
#####
# Commons
variable "compartment_ocid" {
  default = "<ご自身のCompartment ID>"
}

variable "region" {
  default = "<ご自身のCompartment ID>"
}

#####
# Virtual Cloud Network
variable "vcn_display_name" {
  default = "<VCNに設定する名称>"
}

#####
# Oracle Container Engine for Kubernetes
variable "cluster_name" {
  default = "<OKE Clusterに設定する名称>"
}

variable "node_pool_instance_number" {
  default = "1" # 必要であれば修正する
}

variable "node_pool_node_shape_config_memory_in_gbs" {
  default = "16" # 必要であれば修正する
}

variable "node_pool_node_shape_config_ocpus" {
  default = "1" # 必要であれば修正する
}
```
