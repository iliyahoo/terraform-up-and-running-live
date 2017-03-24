terragrunt = {
    # Configure Terragrunt to use DynamoDB for locking
    lock {
        backend = "dynamodb"
        config {
            state_file_id = "${path_relative_to_include()}"
            aws_region = "us-east-1"
            table_name = "vpc_locks"
            max_lock_retries = 360
            aws_profile = "terraform"
        }
    }
    # Configure Terragrunt to automatically store tfstate files in an S3 bucket
    remote_state {
        backend = "s3"
        config {
            encrypt = "true"
            bucket = "terraform-up-and-running-state-iliyahoo"
            key = "${path_relative_to_include()}/terraform.tfstate"
            region = "us-east-1"
            profile = "terraform"
        }
    }
}
