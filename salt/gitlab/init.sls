{% for user in pillar['users'] %}
user.present:
  - name: {{ user }}
  - home: {{ user['home'] }}
  - shell: {{ user['shell'] }}
{% endfor %}

{% for pkg in pillar[pkgs] %}
{{ pkg }}:
  pkg.installed:
{% endfor %}