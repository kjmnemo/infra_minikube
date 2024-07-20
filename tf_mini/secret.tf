resource "kubernetes_secret" "my_api_server_secret" {
  metadata {
    name = "my-api-server-secret"
  }

  type = "Opaque"

  data = {
    DATABASE_USER     = "YWRtaW4="   # base64 encoded "admin"
    DATABASE_PASSWORD = "cGFzc3dvcmQ=" # base64 encoded "password"
  }
}
