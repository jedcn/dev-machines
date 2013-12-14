# saucy64

These are instructions for creating `saucy64.box`, a general purpose
Ubuntu development machine.

This box is available online and can be downloaded here:
https://s3.amazonaws.com/jedcn-dev-machines/saucy64.box. MD5:
03d2fd3a48d8a63464bd61d39191ad45.

It can be added to vagrant via: `vagrant box add saucy64
https://s3.amazonaws.com/jedcn-dev-machines/saucy64.box`

Alternatively, it can be referenced (and automatically downloaded) as
a base box in a `Vagrantfile`:

```ruby
Vagrant.configure("2") do |config|
  # Every Vagrant virtual environment requires a box to build off of.
  config.vm.box = "saucy64"
  config.vm.box_url = "https://s3.amazonaws.com/jedcn-dev-machines/saucy64.box"
end
```

## Objective

Serve as a stand in for the precise32.box referenced on
https://www.vagrantup.com/. The URL of the precise32 box is:
http://files.vagrantup.com/precise32.box. The main difference being
that it's Saucy Salamander instead of Precise Pangolin and 64bit
instead of 32bit.

## Mechanism

The box `saucy64-dev.box` was created by following the instructions in
[CREATING_BASE_BOX][CREATING_BASE_BOX].

[CREATING_BASE_BOX]: CREATING_BASE_BOX.org
