{# vi: set ft=jinja: #}
{% from "elasticsearch/map.jinja" import elasticsearch with context %}

elasticsearch-service:
  service.running:
    - name: elasticsearch
    - enable: True
    - watch:
      - file: /etc/default/elasticsearch
      - pkg: elasticsearch_package
    
