# -*- coding: utf-8 -*-
# vim: ft=sls

{% from "molten/map.jinja" import molten with context %}

salt-api-pkg:
  pkg.installed:
    - name: {{ molten.api_package }}
    - version: {{ molten.api_package_version }}

salt-api-service:
  service.running:
    - name: {{ molten.api_service }}
    - require:
      - pkg: {{ molten.api_package }}
