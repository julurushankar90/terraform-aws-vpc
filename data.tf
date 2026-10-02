data "aws_availability_zones" "available" {
  state = "available"
}

data "aws_vpc" "default" {
  default = true
}

data "aws_route_table" "default" {
  vpc_id = var.vpc_default.id
  filter {
    name   = "association.main"
    values = ["true"]
  }
}