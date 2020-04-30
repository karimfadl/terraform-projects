#Output the IP Address of the Container
output "ip_address" {
        value = docker_container.container_id.ip_address
        description = "The IP of Container"
}

#Output the Name of the Container
output "container_name" {
        value = docker_container.container_id.name
        description = "The Name of Container"
}
