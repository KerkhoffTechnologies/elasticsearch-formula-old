{# vi: set ft=jinja: #}
{% from "elasticsearch/map.jinja" import elasticsearch with context %}

{%- if grains["os"]|lower == 'debian' %}
include:
  - elasticsearch.repository
  - elasticsearch.install
  - elasticsearch.config
  - elasticsearch.service
{%- else %}
debian-based-only:
  test.fail_without_changes:
    - name: "Elasticsearch formula only setup for Debian based systems"
{%- endif %}


