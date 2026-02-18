data "aws_ami" "al2023" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["al2023-ami-2023.*-x86_64"] # AL2023 x86_64
  }

  filter {
    name   = "state"
    values = ["available"]
  }
}
