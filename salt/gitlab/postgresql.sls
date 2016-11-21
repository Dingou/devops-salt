{% set postgres = salt['pillar.get']('gitlab:postgresql') %}
gitlab-db:
  postgres_user.present:
    - name: {{ postgres['db_user'] }}
    - db_user: {{ postgres['db_admin'] }}
    - db_password: {{ postgres['db_pass'] }}
    - db_host: {{ postgres['db_host'] }}
    - db_port: {{ postgres['db_port'] }}
    - createdb: True
    - createroles: True
    - encrypted: True
    - replication: True
    - inherit: True
    - login: True
  postgres_database.present:
    - name: {{ postgres['db_name'] }}
    - owner: {{ postgres['db_user'] }}
    - template: template1