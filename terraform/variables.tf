variable project {
  description = "Project ID"
}
variable region {
  description = "Region"
  default     = "europe-north1"
}
variable public_key_path {
  description = "Path to the public key used for ssh access"
}
variable private_key_path {
  description = "Path to the private key used to connect to instance"
}
variable disk_image {
  description = "Disk image"
}