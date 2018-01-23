# Class: aix_usersec
#
# This module manages AIX user security
#
# Parameters: none
#
# Actions:
#
# Requires: see Modulefile
#
# Sample Usage:
#
# class aix_usersec {
#   usersec { 'default':
#     maxage       => numeric_value,
#     minlen       => numeric_value,
#     loginretries => numeric_value,
#     histexpire   => numeric_value,
#     histsize     => numeric_value,
#     minage       => numeric_value,
#     maxexpired   => numeric_value,
#     minalpha     => numeric_value,
#     minother     => numeric_value,
#     mindiff      => numeric_value,
#     maxrepeats   => numeric_value,
#     umask        => numeric_value,
#   }
# }

class aix_usersec (
  $maxage       = aix_usersec::params::maxage,
  $minlen       = aix_usersec::params::minlen,
  $loginretries = aix_usersec::params::loginretries,
  $histexpire   = aix_usersec::params::loginretries,
  $histsize     = aix_usersec::params::histsize,
  $minage       = aix_usersec::params::minage,
  $mindigit     = aix_usersec::params::mindigit,
  $maxexpired   = aix_usersec::params::maxexpired,
  $minalpha     = aix_usersec::params::minalpha,
  $minother     = aix_usersec::params::minother,
  $mindiff      = aix_usersec::parmas::mindiff,
  $maxrepeats   = aix_usersec::params::maxrepeats,
  $umask        = aix_usersec::params::umask,
) inherits aix_usersec::params {

  usersec { 'default_settings':
    maxage       => $maxage,
    minlen       => $minlen,
    loginretries => $loginretries,
    histexpire   => $histexpire,
    histsize     => $histsize,
    minage       => $minage,
    mindigit     => $mindigit,
    maxexpired   => $maxexpired,
    minalpha     => $minalpha,
    minother     => $minother,
    mindiff      => $mindiff,
    maxrepeats   => $maxrepeats,
    umask        => $umask,
  }
}
