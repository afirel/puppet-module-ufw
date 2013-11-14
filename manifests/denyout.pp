define ufw::denyout($proto='tcp', $port='all') {

  exec { "ufw-denyout-${proto}-port-${port}":
    command => "ufw deny out ${port}/${proto}",
#    unless => "ufw status | grep -E \"\""
    before  => Exec['ufw-enable']
  }

}
