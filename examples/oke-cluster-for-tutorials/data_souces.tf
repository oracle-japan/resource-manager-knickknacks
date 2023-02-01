data "oci_identity_availability_domain" "ad" {
  compartment_id = var.compartment_ocid
  ad_number      = var.availability_domain_number
}

data "oci_containerengine_cluster_option" "tutorial_cluster_option" {
  cluster_option_id = "all"
  compartment_id    = var.compartment_ocid
}

data "oci_containerengine_node_pool_option" "tutorial_node_pool_option" {
  node_pool_option_id = "all"
  compartment_id      = var.compartment_ocid
}

data "oci_core_images" "shape_specific_images" {
  #Required
  compartment_id = var.compartment_ocid
  shape          = var.node_pool_node_shape
}

data "oci_core_services" "tutorial_services" {

}

data "oci_containerengine_cluster_kube_config" "tutorial_cluster_kube_config" {
  cluster_id    = oci_containerengine_cluster.tutorial_cluster.id
  expiration    = var.cluster_kube_config_expiration
  token_version = var.cluster_kube_config_token_version
}

data "oci_core_services" "service_gateway" {
}


