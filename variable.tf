variable "project11-vpc-cidr" {
   default = "10.0.0.0/16"
   description = "project11 vpc cidr block"
   type = string
  }

   variable "project11-pub-sub1-cidr" {
   default = "10.0.1.0/24"
   description = "project11-pub subnet1 cidr block"
   type = string
  }

  variable "project11-pub-sub2-cidr" {
   default = "10.0.2.0/24"
   description = "project11-pub subnet2 cidr block"
   type = string
  } 

  variable "project11-private-sub1-cidr" {
   default = "10.0.3.0/24"
   description = "project11-private subnet1 cidr block"
   type = string
  }

  variable "project11-private-sub2-cidr" {
   default = "10.0.4.0/24"
   description = "project11-private subnet2 cidr block"
   type = string
  }

  variable "project11-vpc-nametag" {
   default = "project11-vpc"
   description = "project-11"
   type = string
  }

  variable "project11-pub-sub1nametag" {
   default = "project11-pub-sub1"
   description = "project-11"
   type = string
  }

  variable "project11-pub-sub2nametag" {
   default = "project11-pub-sub2"
   description = "project-11"
   type = string
  }

  variable "project11-private-sub1nametag" {
   default = "project11-private-sub1"
   description = "project-11"
   type = string
  }

  variable "project11-private-sub2nametag" {
   default = "project11-private-sub2"
   description = "project-11"
   type = string
  }
 variable "project11-igw-name-tag" {
   default = "project11-igw"
   description = "project-11"
   type = string
  }
 
 variable "project11-pub-rtname-tag" {
   default = "project11-pub-rt"
   description = "project-11"
   type = string
  }

 variable "project11-private-rtname-tag" {
   default = "project11-private-rt"
   description = "project-11"
   type = string
 }

 variable "project11-sg-name-tag" {
   default = "project11-sg"
   description = "project-11"
   type = string
 }

 variable "my-project11-rds-db-subnet-nametag" {
   default = "project11-rds-db-subnet"
   description = "project-11"
   type = string
 }

 variable "project11-alb-nametag" {
   default = "project11-alb"
   description = "project-11"
   type = string
 }