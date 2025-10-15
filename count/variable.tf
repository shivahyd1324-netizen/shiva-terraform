variable "instances" {
    default = [ "mongodb", "redis", "mysql", "rabbitmq", "catalogue", "user", "cart", "shipping", "payment", "frontend"]
}
variable "zone_id" {
    default = "Z06389611OU10AAAZ9KX3"

}
variable "domaine_name" {
    default = "shivadevops86s.fun"

}