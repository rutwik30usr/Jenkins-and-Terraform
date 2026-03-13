terraform {
  backend "s3" {
    bucket = "terraform-eks-cicd-7146"
    key    = "eks/terraform.tfstate"
    region = "ap-south-1"

  }
}