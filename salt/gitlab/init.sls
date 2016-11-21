include:
  - postgresql
  {% if grains['os_family'] == 'RedHat' %}
  - gitlab.repos
  {% endif %}
  - gitlab.packages
  - gitlab.postgresql
  - gitlab.user
  - gitlab.ruby
  - gitlab.gitlab-shell
  - gitlab.gitlab
  - gitlab.nginx
