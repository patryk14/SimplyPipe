terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "~> 4.18.0"
        }
    }

    backend "s3" {
        bucket = "fancybucketname"
        key = "state/terraform.tfstate"
        region = "us-east-1"
        encrypt = true
        dynamodb_table = "terraform_fancy_name"
        
    }
}