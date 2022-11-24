variable "sample"{
    default = "Hello World"
}

output "sample-op" {
    value = var.sample
}

output "sample-op1" {
    value = "Value is ${var.sample}"
}

# A variable can be accessed with our without ${} only if the variable is called. BUt in case if it is needed to add with some other string then we need to use double quotes.
# There is no concept of single quotes in terraform.
