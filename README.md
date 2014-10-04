Openstack Cookbook
==================

This is a library cookbook to consume openstack cloud resources.

Requirements
------------

??

Attributes
----------

Attributes are self documented in `attributes/*.rb`

Usage
-----
#### openstack::default

Installs Fog Library and enabled LWRPs

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[openstack]"
  ]
}
```

#### openstack::_example_swift

Example usage of swift LWRPs

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[openstack]",
    "recipe[openstack::_example_swift]",
  ]
}
```

Contributing
------------
TODO: (optional) If this is a public cookbook, detail the process for contributing. If this is a private cookbook, remove this section.

e.g.
1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------

Apache 2

Paul Czarkowski,  username.taken@gmail.com
