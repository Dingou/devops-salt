gitlab:
  postgresql:
    db_name: 'ecom'
    db_user: 'ecom'
    db_admin: 'ecomadmin'
    db_pass: '590321912'
    db_host: 'ecom.cucljzajvh8k.ap-northeast-1.rds.amazonaws.com'
    db_port: '5432'
  use_rvm: False
  rvm_ruby: 2.1.0
  shell_version: v1.8.0
  gitlab_version: 6-5-stable
  db_engine: postgresql
  gravatar:
    enabled: false
  omniauth:
    enabled: false
    allow_single_sign_on: false
    block_auto_created_users: true
  shell:
    audit_usernames: false
    log_level: INFO
    self_signed_cert: false
    #ca_file: /etc/ssl/cert.pem
    {% if grains['os_family'] == 'RedHat' %}
    ca_file: /etc/pki/tls/certs/ca.crt
    {% elif grains['os_family'] == 'Debian' %}
    ca_file: /etc/ssl/certs/ca.crt
    {% endif %}
    #ca_path: /etc/pki/tls/certs
    #{% if grains['os_family'] == 'RedHat' %}
    #ca_path: /etc/pki/tls/certs
    #{% elif grains['os_family'] == 'Debian' %}
    #ca_path: /etc/ssl/certs
    #{% endif %}
  unicorn:
    worker_processes: 2
    timeout: 30
  https: false
  ssl_key: |
    -----BEGIN PRIVATE KEY-----
    ABC=
    -----END PRIVATE KEY-----
  ssl_cert: |
    -----BEGIN CERTIFICATE-----
    ABC=
    -----END CERTIFICATE-----
  runner:
    downloadpath: "https://s3-eu-west-1.amazonaws.com/downloads-packages/ubuntu-14.04/gitlab-runner_5.2.0~omnibus.1-1_amd64.deb"
    #(default debian wget https://s3-eu-west-1.amazonaws.com/downloads-packages/ubuntu-14.04/gitlab-runner_5.2.0~omnibus.1-1_amd64.deb )
    username: "gitlab-runner"
    # default: gitlab-runner
    url: "url gitlab-ci"
    token: "token gitlab-ci"
