variable "region" {}
variable "subnet_ids" {
  type = list(any)
}

variable "db_access" {
  type = list(any)
}
variable "identifier" {
    default = "dbname"

}
variable "allocated_storage" {
    default = "50"

}
variable "storage_type" {
    default = "gp2"

}
variable "engine" {
    default = "mysql"

}
variable "engine_version" {
    default = "5.7"

}
variable "instance_class" {
    default = "db.t2.micro"

}
variable "username" {
    default = "foo"

}
variable "publicly_accessible" {
    default = true

}