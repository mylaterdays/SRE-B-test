module "vcn" {
  source                  = "oracle-terraform-modules/vcn/oci"
  version                 = "3.5.3"
  compartment_id          = oci_identity_compartment.tf-compartment.id
  region                  = "eu-frankfurt-1"
  vcn_name                = "tf-sre-staging"
  vcn_cidrs               = ["10.10.0.0/16"]
  create_internet_gateway = true
  create_nat_gateway      = true
  create_service_gateway  = true
}
