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

elasticsearch-yml-config:
  file.managed:
    - name: /etc/elasticsearch/elasticsearch.yml
    - source: salt://elasticsearch/files/elasticsearch.yml.jinja
    - template: jinja
    - context:
        config: {{ elasticsearch.config|json() }}
    - mode: 644
    - user: root
    - require:
      - pkg: elasticsearch_package


