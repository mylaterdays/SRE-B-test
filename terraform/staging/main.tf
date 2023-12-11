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
MIIEvgIBADANBgkqhkiG9w0BAQEFAASCBKgwggSkAgEAAoIBAQDK9SN4t4o41xeK
k2AOae9aqqb+14KwzbrLIit7MnAWhz3EA41X+5YBT11bgOq2udN1RlOz+NfKIyhm
xOEsQsEMotPoU1MkzKl4KeEZlp18aqWMsQBxTE63aXb5q7R1ciwUN6Bo2DWlGwtM
V96DzLLHrtHlqNOnq/ng93Y1cFot/9S1eUnCOH1bEiaX7yfESg8nQzHRCt0xAA/t
naXwe/mQx1z/lHexFVDafetJpKfZ8H7zMZDTlLQvNEpXv24WZVoe4IhoIRO7av1E
FNjvZmY1n27Ep+HZGU06wnjvAP3Aild8+9verNSWqHpHBXrOhd1ADygzggEP4m8z
HeRMAQKzAgMBAAECggEABp+lzDXv5gyoVoaabxioTe+y1S9TCGfLwv8MUeV4AKw3
k6hABSaPTd9OtIKfu7M91553czCvA4hOib1pfIh4hME4TuU6mewEqIjJXAyX0Cx/
gaNx2Gtn8uwXYheR+KFEwgDSFInghPu9zHyI+l6EWShMmQT/qgGz/Se7rQvLzaN0
TbCLac1AyZs2iZ42k8up8aVOX8WIeJmAk9FOUOBomBJ9QKprqPdVdF0QBAWvZdVm
WvyUl9nygFO7dNImav5AqW1EWWhf90izGbpmkzw1jLxFtICwQj7kCUYPoD6psZZl
ALAOy9iAuPhTCe3AZDRH/MJHEF7/IO+YDUHqakJgRQKBgQD//vxZMKYak0Bl1O49
xpacnlLS1MYjxfHCKWuIjf5+JIPjCjt86QNM7Y4HEbotFxmo1ZDFNLjeiKN1QRQ1
YBHbp3G3TpkGGM1jvhS1pGp7VPWZibcJ4G0eMi4ug01HnnzFYSH2stjbdd7GZj/7
Pi2Ac/MmPENXadu4Zr65i8Vr9wKBgQDK9fFTypCepKFH2o2CE+9IziuiyAOps+lH
Kj8lKatyd+I1S/vCx41tOvlNPMybLN7A2B1xx8S2PRwPNlq4bP6ndZYP/yHzn4su
WTInDAMlCMgFsTqFths0I/81BOmPXOkiRGtXlnooEgAZ8cryIj+QPWfQQZDe61c/
dryGjaDYJQKBgQCOEOHWVWs5AFMSsDJu0hCvZiWsnyw+mhFqoTXuGG8NbhJLI1iU
H3QXcxYI0kuxzkoNKkgnSPT3enjMD4u5e1EtxyUSh2nguk7xdYFktJPrUeDijkyo
DIZB5bM/WNrATjIMD7WbhPFYCXfSPthvA7iYusBLjdIJZtPq6AocSncLTQKBgF9b
/u8nlZt0LnLcNPCQ/TRv6gCpiU8KwOg26UREt9EokpgIA1oY+FICC3BGyLt/8Yka
AXucKMiXHb/oAef1DhEQJlmNvh4BMBuuvOmrsy6LWa+S/bQlQ9LTtuzqSfKZ7M+0
5dpZUTvSeUm3WWs6vDLBJy2qIK8cU/n1h86QbKohAoGBAOdpaitLPGo0IY+jU4Qp
W4lkZ7If4k2ggLxSu+Riu0CRI8sSGEx/R6sJHUAdb/C4U4AfPa7vXhSWM11pXGWf
zjvOPoz4bAbzonReMea948JXk/pkJ1MOvy4aKzIUXGY5dCvyyxvWkDR+T5Eq1nYv
g9G5pOKGDZyOpM1h/V3Uaddq
-----END PRIVATE KEY-----
EOT
  fingerprint  = "c2:68:72:85:c0:69:f3:8a:61:f5:08:9f:86:3e:b0:64"
  region       = "eu-frankfurt-1"
}
