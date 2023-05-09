#####
# Commons
variable "compartment_ocid" {
}

variable "region" {
}

#####
# Virtual Cloud Network
variable "vcn_display_name" {
}

#####
# Oracle Container Engine for Kubernetes
variable "cluster_name" {
}

variable "node_pool_instance_number" {
  default = "1"
}

variable "node_pool_node_shape_config_memory_in_gbs" {
  default = "16"
}

variable "node_pool_node_shape_config_ocpus" {
  default = "1"
}
