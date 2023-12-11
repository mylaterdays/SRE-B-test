resource "oci_identity_compartment" "tf-compartment" {
  compartment_id = "ocid1.compartment.oc1..aaaaaaaal6srwfib76rpnqymsycauxjj6uj7e356tn3cgfy3slni44bh4xnq"
  description    = "Compartment for Terraform resources."
  name           = "TF-SRE"
}
