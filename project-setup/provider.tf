terraform {
    backend "s3" {
        bucket     = "bsg-tf-state-bucket"
        key        = "module/env/terraform.tfstate"
        region     = "us-east-1"
    }
}

provider "aws" {
    region = "us-east-1"
}