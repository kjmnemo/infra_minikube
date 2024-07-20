resource "kubernetes_deployment" "my_api_server_deployment" {
  metadata {
    name = "my-api-server-deployment"
    labels = {
      app = "my-api-server"
    }
  }

  spec {
    replicas = 1

    selector {
      match_labels = {
        app = "my-api-server"
      }
    }

    template {
      metadata {
        labels = {
          app = "my-api-server"
        }
      }

      spec {
        container {
          name  = "my-api-server"
          image = "therekkon/my-api-server"

          port {
            container_port = 3000
          }

          env_from {
            config_map_ref {
              name = "my-api-server-config"
            }
          }

          readiness_probe {
            http_get {
              path = "/health"
              port = 3000
            }
            initial_delay_seconds = 5
            period_seconds        = 10
            failure_threshold     = 3
          }
        }
      }
    }
  }
}
