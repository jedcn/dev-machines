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
# Core Tools
class tools {
  $packages = [
               'emacs24',
               ]
  package { $packages:
    ensure => installed,
  }
}
