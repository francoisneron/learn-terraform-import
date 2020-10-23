## Replace this file with your configuration from following the scenario.
##
## Final configuration:
#
# resource "docker_image" "nginx" {
#   name = "nginx:latest"
# }
#
# # docker_container.web:
resource "docker_container" "web" {
  name              = "hashicorp-learn"
  image             = "sha256:f35646e83998b844c3f067e5a2cff84cdf0967627031aeda3042d78996b68d35"

  ports {
    external = 8080
    internal = 80
  }
}
