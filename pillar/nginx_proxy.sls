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
        type: proxy
        name: apt-mirantis
        proxy:
          host: apt.mirantis.local.test
          port: 80
          protocol: http
        host:
          name: apt.mirantis.com
          port: 80
      salt-stack:
        enabled: true
        type: proxy
        name: salt-stack
        proxy:
          host: repo.saltstack.local.test
          port: 80
          protocol: http
        host:
          name: repo.saltstack.com
          port: 80
      ubuntu-archive:
        enabled: true
        type: proxy
        name: ubuntu-archive
        proxy:
          host: archive.ubuntu.local.test
          port: 80
          protocol: http
        host:
          name: archive.ubuntu.com
          port: 80
      mcp-mirror:
        enabled: true
        type: proxy
        name: mcp-mirror
        proxy:
          host: mirror.mcp.mirantis.local.test
          port: 80
          protocol: http
        host:
          name: mirror.mcp.mirantis.net
          port: 80
      fuel-infra:
        enabled: true
        type: proxy
        name: fuel-infra
        proxy:
          host: mirror.fuel-infra.local.test/mcp-repos
          port: 80
          protocol: http
        host:
          name: mirror.fuel-infra.org/mcp-repos
          port: 80
      gerrit:
        enabled: true
        type: proxy
        name: gerrit
        proxy:
          host: mirror.fuel-infra.local.test/mcp-repos
          port: 443
          protocol: http
        host:
          protocol: https
          name: gerrit.mcp.mirantis.net
          port: 443



