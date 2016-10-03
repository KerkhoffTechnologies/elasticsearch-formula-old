{# vi: set ft=jinja: #}
{% from "elasticsearch/map.jinja" import elasticsearch with context %}


elasticsearch_package_repository:
  pkgrepo.managed:
    - name: deb http://packages.elastic.co/elasticsearch/2.x/{{ grains["os_family"]|lower }} stable main
    - humanname: {{ grains["os"] }} {{ grains["oscodename"]|capitalize }} Elastic Package Repository
    - keyid: {{ elasticsearch.lookup.repository_key_id}}
    - keyserver: {{ elasticsearch.lookup.repository_key_server}}
    - file: /etc/apt/sources.list.d/elasticsearch-2.x.list
    - refresh_db: True
