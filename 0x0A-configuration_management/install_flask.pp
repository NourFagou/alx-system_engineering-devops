# Ensure the python-pip package is installed
package { 'python3-pip':
  ensure => installed,
}

# Use the pip provider to install Flask
python::pip { 'Flask':
  ensure   => 'latest',
  pip_provider => 'pip3',
  require => Package['python3-pip'],
}
