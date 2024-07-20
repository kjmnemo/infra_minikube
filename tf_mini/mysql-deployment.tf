resource "kubernetes_deployment" "mysql_deployment" {
  metadata {
    name = "mysql-deployment"
  }

  spec {
    replicas = 1

    selector {
      match_labels = {
        app = "mysql"
      }
    }

    template {
      metadata {
        labels = {
          app = "mysql"
        }
      }

      spec {
        container {
          name  = "mysql"
          image = "mysql:5.7"

          env {
            name  = "MYSQL_ROOT_PASSWORD"
            value = "password"
          }

          env {
            name  = "MYSQL_DATABASE"
            value = "mydatabase"
          }

          port {
            container_port = 3306
          }
        }
      }
    }
  }
}
