terraform {
    backend "s3" {
        bucket     = "bsg-tf-state-bucket"
        key        = "demo/env/terraform.tfstate"
        region     = "us-east-1"
    }
}