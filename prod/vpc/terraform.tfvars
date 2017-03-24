terragrunt = {
    terraform {
        # using tag of local repo as a version number
        source = "git::../../../modules//vpc?ref=v1.0.0"
    }
    include {
        path = "${find_in_parent_folders()}"
    }
}


profile = "terraform"
my_region = "us-east-1"
prefix = "prod"
my_subnets = {
    us-east-1   = "192.168.40.0/21"
    us-east-1a  = "192.168.40.0/23"
    us-east-1b  = "192.168.42.0/23"
    us-east-1c  = "192.168.44.0/23"
    us-east-1d  = "192.168.46.0/23"
}
