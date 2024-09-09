provider "aws" {
  region = "us-east-1" 
}

#EC2 data
resource "aws_instance" "api_server" {
  ami           = "ami-0e86e20dae9224db8" # Ubuntu Server 22.04 LTS 
  instance_type = "t2.micro"              # Instância no tier grgatuito

  tags = {
    Name = "Accounts Api Server"
  }
}

#Database
resource "aws_db_instance" "api_db" {
  allocated_storage    = 20
  engine               = "mysql"
  engine_version       = "8.0.32"
  instance_class       = "db.t3.micro" 
  db_name                 = "api_db"
  username             = "admin"
  password             = "t3rr4f0rm" # Alterar para uma senha forte
  parameter_group_name = "default.mysql8.0"
  skip_final_snapshot  = true

  tags = {
    Name = "API Database"
  }
}

