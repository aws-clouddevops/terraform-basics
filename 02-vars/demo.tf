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

variable "numbers" {
    default =100
}

output "numbers-op" {
    value = var.numbers
}

variable "datatypes" {
    default = [
        "My world" ,
        500 ,
        true ,
        "passionate",
        "Learning"
    ]
}

# From the above list, you can see that data in list can be of any type individually

output "datatypes-op" {
    value = "Welcome to ${var.datatypes[0]} I am ${var.datatypes[3]} about learning ${var.datatypes[4]}}"
}

# Declaring map variable 

variable "map" {
    default = {
        Class = "Good Morning",
        Duration = 85,
        Speed = "Kmp per hour"
        boolean = true
    }
}

output "map" {
    value = "Hello ${var.map["Class"]} and the speed is ${var.map["Duration"]} ${var.map["Speed"]} is ${var.map["boolean"]}"
}

# Declaring an empty variable
# Declare an empty variable when variables are declared in a seperate file

variable "city" {}

output "city" {
    value = "City name is ${var.city}"
}

# Declaring an empty variable

variable "State" {}

output "State" {
    value = var.State
}