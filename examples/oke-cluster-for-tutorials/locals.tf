locals {
  availability_domain = (var.availability_domain_name != "" ? var.availability_domain_name : data.oci_identity_availability_domain.ad.name)
}

# Get OKE options
locals {
  cluster_k8s_latest_version = reverse(sort(data.oci_containerengine_cluster_option.oke.kubernetes_versions))[0]

  node_pool_k8s_latest_version = reverse(sort(data.oci_containerengine_node_pool_option.oke.kubernetes_versions))[0]
}

locals {
  is_flexible_node_shape = contains(local.compute_flexible_shapes, var.node_pool_node_shape)
}

# Dictionary Locals
locals {
  compute_flexible_shapes = [
    "VM.Standard.E3.Flex",
    "VM.Standard.E4.Flex",
    "VM.Standard.A1.Flex"
  ]
}
