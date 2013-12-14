# saucy64-dev

These are instructions for creating `saucy64-dev.box`, a general
purpose Ubuntu development machine.

This box is available online and can be downloaded here:
https://s3.amazonaws.com/jedcn-dev-machines/saucy64-dev.box. MD5:
d943dd90fe4b28fd127c2f0646286230.

It can be added to vagrant via: `vagrant box add saucy64
https://s3.amazonaws.com/jedcn-dev-machines/saucy64-dev.box`

Alternatively, it can be referenced (and automatically downloaded) as
a base box in a `Vagrantfile`:

```ruby
Vagrant.configure("2") do |config|
  # Every Vagrant virtual environment requires a box to build off of.
  config.vm.box = "saucy64-dev"
  config.vm.box_url = "https://s3.amazonaws.com/jedcn-dev-machines/saucy64-dev.box"
end
```

## Objective

Serve as a decent foundation for building other boxes and doing basic
development by including libraries and tools that are generally
useful.

Examples of libraries include:

- build-essential
- libxml2
- libxml2-dev

Examples of tools include:

- curl
- git
- tree
- zsh

See [manifests/default.pp][manifests/default.pp] for an official list
of what is included.

## Mechanism

The box `saucy64-dev.box` was created with the following:

1. Run `vagrant up` in this directory. The `Vagrantfile` references
   `saucy64.box` as a base, and configures the machine via puppet
   using content found in
   [manifests/default.pp][manifests/default.pp].

2. Once the box has been created, open up Virtual Box and confirm that
   you have a new machine named 'vagrant-saucy-64-dev'.

3. Shut the machine down with `vagrant halt`, and then run `vagrant
   package --base vagrant-saucy-64-dev --output saucy64-dev.box`

[manifests/default.pp]: manifests/default.pp
