resource "oci_containerengine_node_pool" "oke-node-pool" {
  cluster_id         = oci_containerengine_cluster.oke-cluster.id
  compartment_id     = oci_identity_compartment.tf-compartment.id
  kubernetes_version = "v1.27.2"
  name               = "pool1"

  node_config_details {
    placement_configs {
      availability_domain = data.oci_identity_availability_domains.ads.availability_domains[0].name
      subnet_id           = oci_core_subnet.vcn-private-subnet.id
    }
    placement_configs {
      availability_domain = data.oci_identity_availability_domains.ads.availability_domains[1].name
      subnet_id           = oci_core_subnet.vcn-private-subnet.id
    }
    placement_configs {
      availability_domain = data.oci_identity_availability_domains.ads.availability_domains[2].name
      subnet_id           = oci_core_subnet.vcn-private-subnet.id
    }

    size = 3
    #size = 6 # Increasing nodes x2 for implementing shape changes
  }

  node_shape = "VM.Standard.E3.Flex"
  node_shape_config {
    memory_in_gbs = 16
    ocpus         = 1
  }

  node_source_details {
    image_id                = "ocid1.image.oc1.eu-frankfurt-1.aaaaaaaad6yd35dgltyh4jsoda2s3tgi2dgxcqh6q52ab7txdkz5u6ihc2wa"
    source_type             = "image"
    boot_volume_size_in_gbs = 50
  }

  initial_node_labels {
    key   = "name"
    value = "k8s-sre-staging"
  }
}
