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
          websocket: true
          host: apt.mirantis.local
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
          websocket: true
          host: repo.saltstack.local
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
          websocket: true
          host: archive.ubuntu.local
          port: 80
          protocol: http
        host:
          name: archive.ubuntu.com
          port: 80
    # bind:
    #   address: 127.0.0.1
    #   protocol: tcp
    # worker:
    #   limit:
    #     nofile: 30000


