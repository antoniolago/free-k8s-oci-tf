output "k8s-cluster-id" {
  value = oci_containerengine_cluster.k8s_cluster.id
}

output "public_subnet_id" {
  value = oci_core_subnet.vcn_public_subnet.id
}

output "arm_node_pool_id" {
  value = oci_containerengine_node_pool.k8s_arm_node_pool.id
}

# output "amd_node_pool_id" {
#   value = oci_containerengine_node_pool.k8s_amd_node_pool.id
# }
