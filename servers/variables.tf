variable "image_id" {
    default = "ami-1234567"
    type = string
    description = "The id of the machine image (AMI) to use for the server."
}

variable "tags" {
    type = map(string)
    default = {
      "name" = "testelaboratorio"
    }
    description = "Tags to assign to the EC2 instance"
}
