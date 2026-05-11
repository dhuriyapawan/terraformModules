#Request the certificate
resource "aws_acm_certificate" "cert" {
    domain_name = "var.domain_name" #"or any .com domain"
    validation_method = "variable.validation_method" #"or DNS name"

    #subject_alernative_names =var.subject_alternative_name

     lifecycle {
    create_before_destroy = true
  }
}

#Create the DNS records in route 53
resource "aws _route53_record" "validation" {
    for each ={
        for dvo in aws_acm_certificate.acm.domain_validation_options : dvo.domain_name => {
            name = dvo.resource_record_name
            record = dvo.source_record_value
            type = dvo.resource_record_type
        } 

    }

allow_overwrite = true
name = each.value.name
records = [each.value.record]
ttl = var.ttl
type = each.value.type
zone_id = var.zone_id
}
# Trigger the validation
resource "aws_acm_certificate_validation" "acm" {
    certificate_arn = aws_acm_certificate.acm.arn
    validation_records_fqdns = [ for record in aws_route53_record.validation :record.fqdn]
}