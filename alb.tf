#application load balancer

resource "aws_elb" "project11-alb" {
  name               = "project11-alb"
  subnets = [
    aws_subnet.project11-pub-sub1.id,
    aws_subnet.project11-pub-sub2.id
  ]
 
  #listener
listener {
    instance_port     = 80
    instance_protocol = "http"
    lb_port           = 80
    lb_protocol       = "http"
  }

  health_check {
    healthy_threshold   = 5
    unhealthy_threshold = 5
    timeout             = 3
    target              = "HTTP:80/"
    interval            = 30
  }

  tags = {
    Name = "project11-alb-nametag"
  }
}
  