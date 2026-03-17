module "eks" {

  source  = "terraform-aws-modules/eks/aws"
  version = "~> 21.0"


  name               = "my-eks-cluster"
  kubernetes_version = "1.33"

  endpoint_private_access = true

  vpc_id     = module.vpc.vpc_id
  subnet_ids = module.vpc.private_subnets
  


  eks_managed_node_groups = {
    node = {
      desired_capacity = 1
      max_capacity     = 2
      min_capacity     = 1

      instance_types = ["c7i-flex.large"]

    }

    tags = {
      environment = "dev"
      terraform   = "true"
    }

  }


}
