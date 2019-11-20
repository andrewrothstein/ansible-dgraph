andrewrothstein.dgraph
=========
[![Build Status](https://travis-ci.org/andrewrothstein/ansible-dgraph.svg?branch=master)](https://travis-ci.org/andrewrothstein/ansible-dgraph)

Installs [dgraph](https://dgraph.io/).

Requirements
------------

See [meta/main.yml](meta/main.yml)

Role Variables
--------------

See [defaults/main.yml](defaults/main.yml)

Dependencies
------------

See [meta/main.yml](meta/main.yml)

Example Playbook
----------------

```yml
- hosts: servers
  roles:
    - andrewrothstein.dgraph
```

License
-------

MIT

Author Information
------------------

Andrew Rothstein <andrew.rothstein@gmail.com>
