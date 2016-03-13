{# vi: set ft=jinja: #}
{% from "elasticsearch/map.jinja" import elasticsearch with context %}

elasticsearch_package_dependencies:
  pkg.installed:
    - pkgs:
      - ca-certificates

elasticsearch_package:
  pkg.latest:
    - name: {{ elasticsearch.lookup.package_name }}
    - refresh: {{ elasticsearch.lookup.refresh_repository }}
    - require:
      - pkgrepo: elasticsearch_package_repository

