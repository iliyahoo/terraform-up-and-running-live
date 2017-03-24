terragrunt = {
    terraform {
        source = "../../../../modules/data-storage/mysql"
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
