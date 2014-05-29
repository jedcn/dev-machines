# trusty64-initial

These are instructions for creating `trusty64-initial.box`, a minimal
Ubuntu Server installation of Trusty Tahr with:

* openssh
* a vagrant user that has sudo rights and allows login with the known
  vagrant key.
* VirtualBox Guest Additions

This box is available online and can be downloaded here:
https://s3.amazonaws.com/jedcn-dev-machines/trusty64-initial-1.0.0.box. MD5:
d729ed6dfc9664196bedd7a422c30db8

It can be added to vagrant via: `vagrant box add
trusty64-initial-1.0.0
https://s3.amazonaws.com/jedcn-dev-machines/trusty64-initial-1.0.0.box`

Alternatively, it can be referenced (and automatically downloaded) as
a base box in a `Vagrantfile`:

```ruby
Vagrant.configure("2") do |config|
  # Every Vagrant virtual environment requires a box to build off of.
  config.vm.box = "trusty64-initial-1.0.0"
  config.vm.box_url = "https://s3.amazonaws.com/jedcn-dev-machines/trusty64-initial-1.0.0.box"
end
```

## Objective

Serve as a building block for other Vagrant boxes. This doesn't yet
have any built in provisioner (say, puppet vs. chef) or anything from
the Ubuntu server installation beyond openssh.

## Mechanism

The box `trusty64-initial-1.0.0.box` was created by following the instructions in
[CREATING_INITIAL_BOX][CREATING_INITIAL_BOX].

[CREATING_INITIAL_BOX]: CREATING_INITIAL_BOX.org
