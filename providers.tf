###Section 12: Jenkins and terraform integration
provider "aws" {
    region = "${var.region}"
}
terraform {
    backend "s3" {
        bucket = "javahome-tf-1212-raybk12"
        key = "terraform.tfstate"
        region = "us-east-1"
    }
}

