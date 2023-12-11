resource "oci_containerengine_cluster" "oke-cluster" {
  compartment_id     = oci_identity_compartment.tf-compartment.id
  kubernetes_version = "v1.27.2"
  name               = "k8s-sre-staging"
  vcn_id             = module.vcn.vcn_id

  cluster_pod_network_options {
    cni_type = "FLANNEL_OVERLAY"
  }

  endpoint_config {
    is_public_ip_enabled = true
    subnet_id            = oci_core_subnet.vcn-public-subnet.id
  }

  options {
    add_ons {
      is_kubernetes_dashboard_enabled = false
      is_tiller_enabled               = false
    }
    kubernetes_network_config {
      pods_cidr     = "10.244.0.0/16"
      services_cidr = "10.96.0.0/16"
    }
    service_lb_subnet_ids = [oci_core_subnet.vcn-public-subnet.id]
  }
}
