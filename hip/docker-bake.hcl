variable "VERSION" {
    default = "1.0.4"
}

target "default" {
    dockerfile = "Dockerfile"
    tags = ["hamzatrq/bittensor-hip:${VERSION}"]
    contexts = {
        scripts = "../container-template"
        proxy = "../container-template/proxy"
    }
    args = {
        VERSION = "${VERSION}"
    }
}
