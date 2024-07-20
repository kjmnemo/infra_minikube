resource "kubernetes_service" "my_api_server_service" {
  metadata {
    name = "my-api-server-service"
  }

  spec {
    selector = {
      app = "my-api-server"
    }

    port {
      protocol    = "TCP"
      port        = 80
      target_port = 80
    }

    type = "LoadBalancer"
  }
}
