variable "cidr" {
  type = string
  # default     = "10.0.0.0/16"
  description = "This is a CIDR variable network"
}

variable "ami_id" {
  type = string

}

variable "instance_type" {
  type = string
}

variable "sub_pub_cidr_list" {
  type = list(any)

}


variable "sub_prv_cidr_list" {
  type = list(any)

}

variable "region" {
  type = string
}

variable "azs" {
  type = list(any)
}
