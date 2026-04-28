provider "google" {
  project     = "nodal-strength-489800-h6"
  region      = "us-central1"
}

provider "helm" {
  kubernetes = {
    config_path = "~/.kube/config"
  }
}

resource "helm_release" "flask" {
  name       = "flask-app"
  chart      = "./flask-app"
  version    = "0.1.0"
  force_update = true
}

# helm upgrade --install flask-app ./flask-app