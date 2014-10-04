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

If you need a simple swift endpoint to test against, the following blog post will help you set up a single node swift on rackspace cloud: http://blog.phymata.com/2013/02/18/swift-only-with-openstack-devstack-on-the-rackspace-cloud/.

Contributing
------------

STACKFORGE!

License and Authors
-------------------

Apache 2

Paul Czarkowski,  username.taken@gmail.com
