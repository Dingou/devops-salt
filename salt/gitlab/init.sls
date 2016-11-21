{% for user, userinfo in pillar['users'].iteritems() %}
{{ user }}:
  user.present:
    - name: {{ user }}
    - home: {{ userinfo['home'] }}
    - shell: {{ userinfo['shell'] }}
{% endfor %}

{% for pkg in pillar['pkgs'] %}
{{ pkg }}:
  pkg.installed
{% endfor %}