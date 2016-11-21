ruby-ppa-repo:
  pkgrepo.managed:
    - name: deb http://ppa.launchpad.net/brightbox/ruby-ng/ubuntu trusty main

apt-update:
  cmd.run:
    - name: 'apt-get update'

ruby:
  pkg.installed:
    - required:
      - cmd.run: apt-update
      - pkgrepo.managed: ruby-ppa-repo