resource "unifi_device" "dream_machine" {
  forget_on_destroy = false
}

resource "unifi_network" "public_vlan" {
  name    = "Public VLAN"
  purpose = "corporate"

  subnet       = "10.0.3.0/24"
  dhcp_start   = "10.0.3.1"
  dhcp_stop    = "10.0.3.254"
  vlan_id      = 30
  dhcp_enabled = true
}

resource "unifi_network" "private_vlan" {
  name    = "Private VLAN"
  purpose = "corporate"

  subnet       = "10.0.2.0/24"

  dhcp_start   = "10.0.2.1"
  dhcp_stop    = "10.0.2.254"
  vlan_id      = 10
  dhcp_enabled = true
}

resource "unifi_port_profile" "main_pf" {
  name = "Private Profile"
  native_networkconf_id = unifi_network.private_vlan.id
}

import {
  to = unifi_firewall_rule.block_public_to_private_vlan
  id = "696669f098d8be12efe9465a"
}

resource "unifi_firewall_rule" "block_public_to_private_vlan" {
  action     = "reject"
  ruleset = "LAN_LOCAL"
  rule_index = 20000
  name        = "Block Public to Private VLAN"
  enabled     = true

  dst_network_id = unifi_network.private_vlan.id
  src_network_id = unifi_network.public_vlan.id
}