# Ensure the python3-pip package is installed
package { 'python3-pip':
  ensure => installed,
}

# Install Flask version 2.1.0 and Werkzeug version 2.1.1 using pip3
exec { 'install_flask_and_werkzeug':
  command => '/usr/bin/pip3 install Flask==2.1.0 Werkzeug==2.1.1',
  require => Package['python3-pip'],
  unless  => '/usr/bin/pip3 show Flask | grep -q "^Version: 2.1.0$" && /usr/bin/pip3 show Werkzeug | grep -q "^Version: 2.1.1$"',
}
