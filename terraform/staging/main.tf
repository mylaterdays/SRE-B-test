terraform {
  required_providers {
    oci = {
      source  = "oracle/oci"
      version = "5.22.0"
    }
  }
  required_version = ">= 1.1.0"

}

provider "oci" {
  tenancy_ocid = "ocid1.tenancy.oc1..aaaaaaaahndhbxpaem2rfq45mq7rddbwqij4b3e66erdgtsrqixc2bqmt4pa"
  user_ocid    = "ocid1.user.oc1..aaaaaaaa7btqidnnc5ohiw4na4sx32hl3l3n2n6jvpdjwpmqqc4joswo5vyq"
  private_key  = <<-EOT
-----BEGIN PRIVATE KEY-----
Key to insert
-----END PRIVATE KEY-----
EOT
  fingerprint  = "c2:68:72:85:c0:69:f3:8a:61:f5:08:9f:86:3e:b0:64"
  region       = "eu-frankfurt-1"
}
