###Section 12: Jenkins and terraform integration
resource "aws_vpc" "javahome_vpc" {
    cidr_block = "${var.vpc_cidr}"
    instance_tenancy = "${var.tenancy}"
    tags = {
        Name = "${terraform.workspace}-javahome-vpc"
    }
}