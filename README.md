======
ElasticSearch
======

Formulas for working with Elastic Search
Just Elastic Search...

.. note::

    See the full `Salt Formulas installation and usage instructions
    <http://docs.saltstack.com/en/latest/topics/development/conventions/formulas.html>`_.

Available states
================

.. contents::
    :local:

``elasticsearch``
----------

Install and run ElasticSearch server

.. note::

    You can override the default Elastic Search options by setting each line in the *"elasticsearch:lookup:config"* pillar. This effectively writes the config in */etc/default/elasticsearch*. See *pillar.example*


