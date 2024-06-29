# Ensure the python-pip package is installed
package { 'python3-pip':
  ensure => installed,
}

# Use the pip provider to install Flask version 2.1.0
python::pip { 'Flask':
  ensure       => '2.1.0',
  pip_provider => 'pip3',
  require      => Package['python3-pip'],
}

