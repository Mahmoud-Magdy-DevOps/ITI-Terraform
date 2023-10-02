module "mynetwork" {
  source            = "./network"
  cidr              = var.cidr
  sub_pub_cidr_list = var.sub_pub_cidr_list
  sub_prv_cidr_list = var.sub_prv_cidr_list
  azs               = var.azs
}

