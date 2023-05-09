module "oke-quickstart" {
  source  = "shukawam/oke-quickstart/oci"
  version = "1.1.0"

  compartment_ocid = var.compartment_ocid
  region           = var.region

  vcn_display_name = var.vcn_display_name

  cluster_name                              = var.cluster_name
  node_pool_instance_number                 = var.node_pool_instance_number
  node_pool_node_shape_config_memory_in_gbs = var.node_pool_node_shape_config_memory_in_gbs
  node_pool_node_shape_config_ocpus         = var.node_pool_node_shape_config_ocpus
}
