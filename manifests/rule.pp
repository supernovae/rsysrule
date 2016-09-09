# Class: rsysrule
# ===========================
#
# Add rules to /etc/syslog.d/* without having to manage rsyslog config itself.
#
# Parameters
# ----------
#
# Document parameters here.
#
# * `sample parameter`
# Explanation of what this parameter affects and what it defaults to.
# e.g. "Specify one or more upstream ntp servers as an array."
#
# Variables
# ----------

define rsysrule::rule($command, $order = 10) {
  file { "${order}-${title}.conf":
    name    => "/etc/rsyslog.d/${order}-${title}.conf",
    content => $command,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    require => Package['rsyslog'],
    notify  => Service['rsyslog'],
  }
}