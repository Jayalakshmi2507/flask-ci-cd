provider "docker" {}

resource "docker_image" "flask_app" {
  name = "flask-app"
  build {
    context    = "."
    dockerfile = "Dockerfile"
  }
}

resource "docker_container" "flask_container" {
  name  = "flask-container"
  image = docker_image.flask_app.image_id
  ports {
    internal = 5000
    external = 5000
  }
}
