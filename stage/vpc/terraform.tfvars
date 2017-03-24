terragrunt = {
    terraform {
        source = "../../../modules/vpc"
    }
    include {
        path = "${find_in_parent_folders()}"
    }
}


profile = "terraform"
my_region = "us-east-1"
prefix = "stage"
my_subnets = {
    us-east-1   = "192.168.56.0/21"
    us-east-1a  = "192.168.56.0/23"
    us-east-1b  = "192.168.58.0/23"
    us-east-1c  = "192.168.60.0/23"
    us-east-1d  = "192.168.62.0/23"
}
