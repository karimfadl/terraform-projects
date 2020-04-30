resource "docker_secret" "mysql_root_password" {
  name = "root_password"
  data = var.mysql_root_password
}
