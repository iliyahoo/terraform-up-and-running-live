terragrunt = {
    terraform {
        # using tag of local repo as a version number
        source = "git::../../../../modules//data-storage/mysql?ref=v1.0.0"
    }
    include {
        path = "${find_in_parent_folders()}"
    }
    dependencies {
        paths = ["../../vpc"]
    }
}


my_region = "us-east-1"
aws_profile = "terraform"
db_password = "12345678"
prefix = "prod"
