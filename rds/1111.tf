/* resource "aws_db_instance" "default" {
  allocated_storage    = 50
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t3.micro"
  name                 = "mydb"
  username             = "foo"
  password             = "foobarbaz"
  parameter_group_name = "default.mysql5.7"
  skip_final_snapshot  = true
  auto_minor_version_upgrade = true 
  #vpc_security_group_ids = 
}

/* resource "aws_db_instance" "default" {
  identifier           = "mysql-db-01"
  #allocated_storage   = 50
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t2.micro"
  name                 = "mydb"
  username             = "tstdb01"
  password             = "tstdb01234"
  parameter_group_name = "default.mysql5.7"
  allocated_storage     = 50
  max_allocated_storage = 500
  skip_final_snapshot  = true
} */



/* resource "aws_db_instance" "example" {
  # ... other configuration ...

  allocated_storage     = 50
  max_allocated_storage = 500
} */

 */