resource "akamai_dns_record" "alakhani_net_alakhani_net_NS" {
  zone       = local.zone
  target     = ["a1-31.akam.net.", "a12-64.akam.net.", "a13-65.akam.net.", "a22-66.akam.net.", "a26-67.akam.net.", "a9-64.akam.net."]
  name       = "alakhani.net"
  recordtype = "NS"
  ttl        = 86400
}

resource "akamai_dns_record" "alakhani_net_alakhani_net_SOA" {
  zone          = local.zone
  refresh       = 3600
  expiry        = 604800
  target        = []
  name_server   = "a1-31.akam.net."
  email_address = "hostmaster.alakhani.net."
  ttl           = 86400
  retry         = 600
  nxdomain_ttl  = 300
  name          = "alakhani.net"
  recordtype    = "SOA"
}

resource "akamai_dns_record" "www-alakhani-net-Origin-A-record" {
  zone       = "alakhani.net"
  name       = "www.alakhani.net"
  recordtype = "A"
  ttl        = 60
  target     = ["143.42.79.110"]
}

/*
resource "akamai_dns_record" "alakhani-net-Origin-A-record" {
  zone       = "alakhani.net"
  name       = "alakhani.net"
  recordtype = "A"
  ttl        = 60
  target     = ["172.104.37.196"]
}
*/
