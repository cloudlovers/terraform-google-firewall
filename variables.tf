variable "environment" {
  type        = string
  default     = ""
  description = "Environment (e.g. `prod`, `dev`, `staging`)."
}

variable "label_order" {
  type        = list(any)
  default     = []
  description = "Label order, e.g. sequence of application name and environment `name`,`environment`,'attribute' [`webserver`,`qa`,`devops`,`public`,] ."
}

variable "name" {
  type        = string
  default     = ""
  description = "Name of the resource. Provided by the client when the resource is created. "
}

variable "google_compute_firewall_enabled" {
  type    = bool
  default = true
}

variable "module_enabled" {
  type    = bool
  default = true
}

variable "protocol" {
  type        = string
  default     = ""
  description = "The IP protocol to which this rule applies. The protocol type is required when creating a firewall rule."
}

variable "project_id" {
  type        = string
  default     = ""
  description = "The project in which the resource belongs. If it is not provided, the provider project is used."
}

variable "description" {
  type        = string
  default     = "Managed by clouddrove"
  description = "Creates Firewall rule targetting tagged instances"
}

variable "network" {
  type        = string
  default     = ""
  description = "The name or self_link of the network to attach this firewall to."
}

variable "allow" {
  type        = list(any)
  default     = []
  description = "(Optional) The list of ALLOW rules specified by this firewall. Each rule specifies a protocol and port-range tuple that describes a permitted connection."
}

variable "ports" {
  type    = list(number)
  default = []
}

variable "source_tags" {
  type        = list(string)
  default     = []
  description = "Nomes de tags que serão utilizadas para utilizar com esta regra de firewall"
}

variable "source_ranges" {
  type        = list(string)
  default     = ["0.0.0.0/0"]
  description = "IP que será liberado para acessar"
}