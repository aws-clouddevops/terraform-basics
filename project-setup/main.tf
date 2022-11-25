module "shipping" {
    source     = "./ec2"
    COMPONENT  = "shipping"
    APP_VERSION = "0.0.1"
}