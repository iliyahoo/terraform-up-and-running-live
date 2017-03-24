terragrunt = {
    terraform {
        # using tag of local repo as a version number
        source = "git::../../../../modules//services/webserver-cluster?ref=v1.0.0"
    }
    include {
        path = "${find_in_parent_folders()}"
    }
    dependencies {
        paths = ["../../vpc", "../../data-storage/mysql"]
    }
}


my_region = "us-east-1"
aws_profile = "terraform"
image_id = "ami-40d28157"
instance_type = "t2.nano"
key_name = "iliya@vika-note.strakovich.com"
server_port = 8080
min_size = 1
max_size = 2
prefix = "prod"
