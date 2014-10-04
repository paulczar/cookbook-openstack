# Encoding: utf-8
name 'openstack'
maintainer 'Paul Czarkowski'
maintainer_email 'username.taken@gmail.com'
license 'Apache2'
description 'Library cookbook to interact with Openstack Clouds'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '0.1.0'

%w(build-essential apt xml).each do |ckbk|
  depends ckbk
end
