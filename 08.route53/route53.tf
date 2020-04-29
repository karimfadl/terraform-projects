resource "aws_route53_zone" "karimlabs" {
   name = "karimlabs.com"
}
resource "aws_route53_record" "server1-record" {
   zone_id = aws_route53_zone.karimlabs.zone_id
   name = "server1.karimlabs.com"
   type = "A"
   ttl = "300"
   records = ["104.236.247.8"]
}
resource "aws_route53_record" "www-record" {
   zone_id = aws_route53_zone.karimlabs.zone_id
   name = "www.karimlabs.com"
   type = "A"
   ttl = "300"
   records = ["104.236.247.8"]
}
resource "aws_route53_record" "mail1-record" {
   zone_id = aws_route53_zone.karimlabs.zone_id
   name = "karimlabs.com"
   type = "MX"
   ttl = "300"
   records = [
     "1 aspmx.l.google.com.",
     "5 alt1.aspmx.l.google.com.",
     "5 alt2.aspmx.l.google.com.",
     "10 aspmx2.googlemail.com.",
     "10 aspmx3.googlemail.com."
   ]
}

output "ns-servers" {
   value = aws_route53_zone.karimlabs.name_servers
}
