resource "kubernetes_service" "nginx_service" {
  metadata {
    name      = "nginx-service"
    namespace = kubernetes_namespace.free_namespace.id
  }
  spec {
    selector = {
      app = "nginx"
    }
    port {
      port        = 80
      target_port = 80
      node_port   = 31600
    }

    type = "NodePort"
  }
}