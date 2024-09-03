
aws_region = "us-east-1"
key_name = "prod_key"
tag = ["prod-server1","prod-server2"]
instance_type = "t2.micro"
ami = "ami-066784287e358dad1"
vpc_security_group_id = "sg-0ec73e1547b7e95ad"
aws_lb = "prod-lb"
load_balancer_type = "application"
subnet_id = ["subnet-005c9c88e1942f4cd", "subnet-07889100cc0928d48"]
aws_lb_target_group = "prod-lb-tg"
vpc_id = "vpc-012bb86400a6a5946"
