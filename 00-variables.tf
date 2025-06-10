variable "project_id" {
  description = "The GCP project ID"
  type = string
  default = "invictus-65"
}

variable "region" {
  description = "The GCP region"
  type = string
  default = "us-central1"
}

variable "zone" {
  description = "The GCP zone"
  type = string
  default = "us-central1-a"
}

variable "vpc_name" {
  description = "Name of the VPC network"
  type = string
  default = "slipknot-vpc"
}

variable "subnet_name" {
  description = "Name of the subnet"
  type = string 
  default = "wait-and-bleed-subnet"
}

variable "subnet_cidr" {
  description = "CIDR range for the subnet"
  type = string
  default = "10.11.1.0/24"
}

variable "vm_name" {
  description = "Name of the VM instance"
  type = string
  default = "slipknot-vm"
}

variable "machine_type" {
  description = "Machine type for the VM"
  type = string
  default = "e2-micro"
}