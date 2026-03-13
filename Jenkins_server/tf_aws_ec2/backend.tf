terraform {
  backend "s3" {
    bucket = "terraform-eks-cicd-7146"
    key    = "jenkins/terraform.tfstate"
    region = "ap-south-1"
  }
}