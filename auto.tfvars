
aws_region = "us-west-2"
key_name = "prod_key"
tag = ["prod-server1","prod-server2"]
instance_type = "t2.micro"
ami = "ami-03c983f9003cb9cd1"
vpc_security_group_id = "sg-0bc5cd5487adfa7bd"
aws_lb = "prod-lb"
load_balancer_type = "application"
subnet_id = ["subnet-0160fa13810235c75", "subnet-018df9c7bf0674480"]
aws_lb_target_group = "prod-lb-tg"
vpc_id = "vpc-0e7311da59b90d0f8"
.
