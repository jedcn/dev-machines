stage { 'first':
  before => Stage['second']
}

stage { 'second':
  before => Stage['third']
}

stage { 'third':
  before => Stage['main']
}

class { 'apt_get::update':
  stage => first,
}

class { 'libraries':
  stage => second,
}

class { 'tools':
  stage => third,
}

#
# Update upon provisioning
class apt_get::update {
  exec { 'apt-get update' :
    path => '/usr/bin'
  }
}


#
# Core Libraries
class libraries {
  $packages = [
               'build-essential',
               'libssl-dev',
               'python-setuptools',
               'python-dev',
               'python-software-properties',
               ]
  package { $packages:
    ensure => installed,
  }
}

#
# Core Tools
class tools {
  $packages = [
               'curl',
               'git-core',
               'tmux',
               'tree',
               'vim',
               'wget',
               'zsh',
               ]
  package { $packages:
    ensure => installed,
  }
}
