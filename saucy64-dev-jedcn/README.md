# saucy64-dev-jedcn

These are instructions for creating `saucy64-dev-jedcn.box`, an Ubuntu
development machine customized for jedcn.

This box is not yet available online. If it becomes available online,
it will will be here:
https://s3.amazonaws.com/jedcn-dev-machines/saucy64-dev-jedcn.box. MD5:
???.

Instead, you can build it following the "Mechanism" section below, and
then add the extracted box directly to your machine with something
like: `vagrant box add saucy64-dev-jedcn
https://s3.amazonaws.com/jedcn-dev-machines/saucy64-dev.box`

Once you have done that, you can reference it as a base box in a
`Vagrantfile`:

```ruby
Vagrant.configure("2") do |config|
  # Every Vagrant virtual environment requires a box to build off of.
  config.vm.box = "saucy64-jedcn-dev"
end
```

## Objective

Serve as jedcn's development machine.

See [manifests/default.pp][manifests/default.pp] for an official list
of what is included.

## Mechanism

The box `saucy64-dev-jedcn.box` was created with the following:

1. Run `vagrant up` in this directory. The `Vagrantfile` references
   `saucy64-dev.box` as a base, and configures the machine via puppet
   using content found in
   [manifests/default.pp][manifests/default.pp].

2. Once the box has been created, open up Virtual Box and confirm that
   you have a new machine named 'vagrant-saucy-64-dev-jedcn'.

3. Shut the machine down with `vagrant halt`, and then run `vagrant
   package --base vagrant-saucy-64-dev-jedcn --output
   saucy64-dev-jedcn.box`

[manifests/default.pp]: manifests/default.pp
