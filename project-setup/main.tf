module "shipping" {
    for_each   = var.ALL_COMPONENTS
    source     = "./ec2"
    COMPONENT  = each.key # Declarative way of running a loops
    APP_VERSION = each.value.app_version # Declarative way of running loops
}