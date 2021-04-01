###Section 12: Jenkins and terraform integration
provider {
    region = "${var.region}"
}

terraform {
    backend "s3" {
        bucket = "javahome-tf-1212"
        key = "terraform.tfstate"
        region = "us-east-1"
    }
}