variable "regions" {
  default = ["GRA11","SBG5"]
  type    = list
}

variable "instance_name" {
  type = string
  default = "eductive10"
}

variable "image_name" {
  type = string
  default = "Debian 11"
}

variable "flavor_name" {
  type = string
  default = "s1-2"
}

variable "backend_number_of_instances"{
  type = number
  default = 1
}

variable "service_name" {
  type = string
}


variable "vlan_id"{
  type = number
  default = 10
}

variable "vlan_dhcp_start" {
  type = string
  default = "192.168.10.1"
}

variable "vlan_dhcp_finish" {
  type = string
  default = "192.168.10.200"
}

variable "vlan_dhcp_network" {
  type = string
  default = "192.168.10.0/24"
}
