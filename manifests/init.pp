# Class: rsysrule
# ===========================
#
# Setup rsyslog rules
#
# Parameters
# ----------
#
# Package Name
#
# * `package_name`
# OS Package name for rsyslog package. Defaults to rsyslog
#
# Examples
# --------
#
# @example
#    class { 'rsysrule':
#      package_name => 'rsyslog',
#    }
#
# Authors
# -------
#
# Byron Miller <byronm@gmail.com>
#
#
class rsysrule(
    $package_name = 'rsyslog'
) {

package { $rsysrule::package_name: :
    ensure => installed,
    }

  service { 'rsyslog':
    ensure     => running,
    require    => Package['$rsysrule::package_name'],
    enable     => true,
    hasstatus  => true,
    hasrestart => true,
  }

}
