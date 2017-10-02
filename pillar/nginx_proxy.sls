nginx:
  server:
    undercloud: true
    enabled: true
    file_url_port: 8080
    extras: false
    hostname: localhost
    http_boot_folder: /httpboot
    http_boot_folder_mode: 777
    site:
      nginx-apt-mirantis:
        enabled: true
        type: nginx_proxy
        name: apt-mirantis
        proxy:
          headers: False
          host: apt.mirantis.com
          port: 80
          protocol: http
        host:
          name: apt.mirantis.local.test
          port: 80
      salt-stack:
        enabled: true
        type: nginx_proxy
        name: salt-stack
        proxy:
          headers: False
          host: repo.saltstack.com
          port: 80
          protocol: http
        host:
          name: repo.saltstack.local.test
          port: 80
      ubuntu-archive:
        enabled: true
        type: nginx_proxy
        name: ubuntu-archive
        proxy:
          headers: False
          host: archive.ubuntu.com
          port: 80
          protocol: http
        host:
          name: archive.ubuntu.local.test
          port: 80
      mcp-mirror:
        enabled: true
        type: nginx_proxy
        name: mcp-mirror
        proxy:
          headers: False
          host: mirror.mcp.mirantis.net
          port: 80
          protocol: http
        host:
          name: mirror.mcp.mirantis.local.test
          port: 80
      fuel-infra:
        enabled: true
        type: nginx_proxy
        name: fuel-infra
        proxy:
          headers: False
          host: mirror.fuel-infra.org
          port: 80
          protocol: http
        host:
          name: mirror.fuel-infra.local.test
          port: 80
      gerrit:
        enabled: true
        type: nginx_proxy
        name: gerrit
        proxy:
          headers: False
          host: gerrit.mcp.mirantis.net
          port: 443
          protocol: http
        host:
          protocol: https
          name: gerrit.mcp.mirantis.local.test
          port: 443
