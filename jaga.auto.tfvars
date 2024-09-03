
aws_region = "ap-southeast-2"
key_name = "prod_key"
tag = ["prod-server1","prod-server2"]
instance_type = "t2.micro"
ami = "ami-01fb4de0e9f8f22a7"
vpc_security_group_id = "sg-0b12056cdabb4db0d"
aws_lb = "prod-lb"
load_balancer_type = "application"
subnet_id = ["subnet-0849fc87e16ec92c5", "subnet-099a6b28e76b52fdf"]
aws_lb_target_group = "prod-lb-tg"
vpc_id = "vpc-0edabcd4f42846649"
