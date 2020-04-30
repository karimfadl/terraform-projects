#Define variables
variable "env" {
	description = "env : dev or prod"
}

variable "image_name" {
        default = {
		dev = "ghost:latest"
		prod = "ghost:alpine"
	}
        description = "Image For Container"
	type = map
}

variable "container_name" {
        default = {
		dev = "blog_dev"
		prod = "blog_prod"
	}
        description = "Name Of Container"
	type = map
}

variable "int_port" {
        default = "2368"
        description = "Internal Port of Container"
}

variable "ext_port" {
        default = {
		dev = "8081"
		prod = "80"
	}
        description = "External Port of Container"
	type = map
}
