variable "my_region" {
    type = "string"
    default = "us-east-1"
}


provider "aws" {
    region  = "${var.my_region}"
    profile = "terraform"
}


module "vpc" {
    source = "../../modules/vpc"
    my_region = "${var.my_region}"
    my_subnets = {
        us-east-1   = "192.168.56.0/21"
        us-east-1a  = "192.168.56.0/23"
        us-east-1b  = "192.168.58.0/23"
        us-east-1c  = "192.168.60.0/23"
        us-east-1d  = "192.168.62.0/23"
    }
    prefix = "stage"
}
