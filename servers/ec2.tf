resource "aws_instance" "testelaboratorio" {
    ami = var.image_id
    instance_type = "t2.micro"
    tags = var.tags
}

