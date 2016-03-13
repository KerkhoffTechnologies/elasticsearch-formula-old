{# vi: set ft=jinja: #}
{% from "elasticsearch/map.jinja" import elasticsearch with context %}

elasticsearch-deb-config:
  file.managed:
    - name: /etc/default/elasticsearch
    - source: salt://elasticsearch/files/elasticsearch.default.jinja
    - template: jinja
    - mode: 644
    - user: root
    - require:
      - pkg: elasticsearch_package


