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
          host: ==HOST_APT==
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
          host: ==HOST_SALTSTACK==
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
          host: ==HOST_ARCHIVE_UBUNTU==
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
          host: ==HOST_MIRROR_MCP_MIRANTIS==
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
      glusterfs:
        enabled: true
        type: nginx_proxy
        name: glusterfs
        proxy:
          headers: False
          host: ==HOST_PPA_LAUNCHPAD==
          port: 80
          protocol: http
        host:
          name: ppa.launchpad.local.test
          port: 80
      gerrit:
        enabled: true
        type: nginx_proxy
        name: gerrit
        ssl:
          enabled: true
          mode: normal
          cert_file: /root/ssl-nginx.crt
          key_file: /root/ssl-nginx.key
        proxy:
          headers: False
          host: ==HOST_GERRIT_MCP_MIRANTIS==
          port: 443
          protocol: https
        host:
          protocol: https
          name: gerrit.mcp.mirantis.local.test
          port: 443
