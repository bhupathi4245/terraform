variable "ami_id" {
  type    = string
  default = "ami-09c813fb71547fc4f"
  description = "AMI ID of joindevops RHEL9"
}

variable "instance_type" {
    default = "t3.micro"
}

variable "ec2_tags" {
    type = map(string)
    default = {
        Name = "Roboshop"
        Purpose = "variables-demo"
    }
}

variable "sg_name" {
    default = "allow_all"
}

variable "sg_description" {
    default = "allow all inbound and outbound trafic from the interner"
}

variable "from_port" {
    default = 0
}

variable "to_port" {
    type = number
    default = 0
}

variable "cidr_blocks" {
    type = list
    default = ["0.0.0.0/0"]
}

variable "sg_tags" {
    default = {
        Name = "allow_all_tag"
    }
}

variable "environment" {
    default = "dev"
}

variable "instances" {
    default = ["mongodb", "redis", "mysql", "rabbitmq"]    
 /*   default = {             #["mongodb", "redis", "mysql", "rabbitmq"]
        mongodb = "t3.micro"        # each keyword is assigned for every interation. you will get each.key and each.value
        redis = "t3.micro"
        mysql = "t3.micro"
        rabbitmq = "t3.micro"
    } */
}

variable "zone_id" {
    default = "Z04557222TXQH5DOJA863"
}

variable "domain_name" {
    default = "akinfotech.site"
}

variable "ingress_ports" {
    default = [ # list(map)
        {
            from_port = 22
            to_port = 22
        },
        {
            from_port = 80
            to_port = 80
        },
        {
            from_port = 443
            to_port = 443
        }
    ]
}