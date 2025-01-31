# Terraform State File 
By  using terraform statefile, it understands that what infrastructure it has created and what it has to create, because there might be some conflict while creating any reources in cloud, and dealing with that conflict will be a big challenge for 
any devops engineer.
There are some drawbacks of using terraform statefiles as well, let us assume that it has some sensitive information, so its not an ideal way to store statefile locally on your computer. Anyone can read and understand what information it holds and can lead to
serious situation for the orgnisation.
# Remote backend
So instead of storing the statefile locally or in any version control system, we can store it externally... for ex- aws s3 bucket
This storage can act as a remote backend where we can store the statefile safely. it also updates the state file whenever any changes happen and updates the state file accordingly

# Terraform Lock File
Terraform used lock file to prevent any collision of infrastructure creation. for example. two devlopers are working on a same project, dev1 wants to create a private s3 bucket while dev2 tries to create s3 bucket public
in this given scenario it will be a conflict, so terraform locks that particular code or project for the person who initiated it first then applies the changes while other devloper has to wait till the operation completion


# Practical files uploaded 
1. First create the main.tf file
2.  Then create the backend.tf file
