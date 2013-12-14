# dev-machines

These are notes (and configuration instructions) for building
development machines that I use with [Vagrant][vagrant].

## Machines

### saucy64

An Ubuntu Saucy Salamander 64 bit server installation. It is an
attempt to build something similar to
http://files.vagrantup.com/precise32.box, except that it's Saucy
Salamander instead of Precise Pangolin and 64bit instead of 32bit.

Here are [additional details for saucy64][saucy64-readme].

### saucy64-dev

This machine builds off of saucy64.box and adds basic tools, like git
and zsh.

Here are [additional details for saucy64-dev][saucy64-dev-readme].

[vagrant]: https://www.vagrantup.com
[saucy64-readme]: saucy64/README.md
[saucy64-dev-readme]: saucy64-dev/README.md
