resource "kubernetes_config_map" "my_api_server_config" {
  metadata {
    name = "my-api-server-config"
  }

  data = {
    DB_HOST     = "mysql-service"
    DB_USER     = "root"
    DB_PASSWORD = "password"
    DB_NAME     = "mydatabase"
  }
}
