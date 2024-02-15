terraform {
  required_providers {
    kubectl = {
      source = "gavinbunney/kubectl"
      version = "1.14.0"
    }
  }
}

provider "kubectl" {
  config_path = "/home/useradd/.kube/config"
}

resource "kubectl_manifest" "express_app" {
  yaml_body = <<YAML
apiVersion: apps/v1
kind: Deployment
metadata:
  name: my-express-app-deployment
spec:
  replicas: 2
  selector:
    matchLabels:
      app: my-express-app
  template:
    metadata:
      labels:
        app: my-express-app
    spec:
      containers:
        - name: node-app
          image: abayehjnr/node:v4
          ports:
            - containerPort: 3000
YAML
}