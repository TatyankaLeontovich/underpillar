dnsmasq:
  server:
    enabled: true
    testing: false
    disable_dnsmasq_dns: false
    local_address: 10.70.0.122
    inventory_dhcp: false
    dhcp_pool_start: 10.70.0.200
    dhcp_pool_end: 10.70.0.205
    dnsmasq_router: 10.70.0.122
    network_interface: ens3
    dhcp_lease_time: 12h
    dnsmasq_dns_servers: 8.8.8.8,8.8.4.4
    file_url_port: 8081