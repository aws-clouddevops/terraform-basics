# terraform-basics

All terraform Basics will be added Here

Terraform By deafult looks for variable file terraform.tfvars thats the reason there is no need to mention.

When we use any file other than terraform.tfvars we need to mention it as  -var-file=name of the file where the variable is declared


### Argumets and Attributes :

Arguments : Properties that we use to provision the infra

Attributes : Properties that we use to print the details after the creation of the infra like private, public ip (all other details)

1) Modules
2) Datasource - 
    * Dynamically fetch the resources     already existing
    * This is used to fetch the information of the already existing resources on cloud
3) Provisioners :
    * file provisioner
    * Local-exec provisioner
    * remote-exec provisioner

### .auto.tfvars - have very high priority and can not be over written

# What is Mutable infra?

...

Infra that does change, which also means if v1 of application is running on server A and if you wish to deploy v2 you will be deploying on the same server A, Here server remains the same and application is only updated

# What is Immutable infra? ( Containers introduces this concept first)

Infra that does change, which also means if v1 of application is running on server A and if you wish to deploy v2 you will be deploying on a new server B, Here server  and application are always new. Everytime you would be deleting the server running old version.
