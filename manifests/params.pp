# Class: shibidp::params
#
# This class manages parameters for provisioning
#

class shibidp::params {

  $shib_idp_version       = '3.2.1'
  $shib_user              = 'shib'
  $shib_group             = 'shib'
  $shib_src_dir           = '/root/idpv3-source'
  $shib_install_base      = '/opt/shibboleth-idp'
  $idp_jetty_base         = '/opt/idp_jetty'
  $idp_jetty_user         = 'jetty'
  $idp_entity_id          = 'https://shibvm-idp.miamioh.edu:21443/idp/shibboleth'
  $idp_server_url         = 'https://shibvm-idp.miamioh.edu:21443'
  $idp_server_name        = 'shibvm-idp.miamioh.edu'

  $include_cas            = false
  $cas_server_url         = 'https://idptest.miamioh.edu/cas'
  
  $ldap_url               = 'ldaps://ldapt.muohio.edu:636'
  $ldap_base_dn           = 'ou=people,dc=muohio,dc=edu'
  $ldap_bind_dn           = 'uid=shibboleth,ou=ldapids,dc=muohio,dc=edu'
  $ldap_bind_pw           = undef
  $ldap_dn_format         = 'uid=%s,ou=people,dc=muohio,dc=edu'
  $ldap_return_attributes = ['uid', 'eduPersonPrincipalName']

  $slf4j_version          = '1.7.22'
  $slf4j_checksum_type    = 'md5'
  $slf4j_checksum         = '7ab9c81ec1881fce4d809bbc48008eb6'
  $logback_version        = '1.1.8'
  $logback_checksum_type  = 'md5'
  $logback_checksum       = '0466114001b29808aeee2bf665e1b2f8'

  $ks_password            = undef

  $relying_party_profiles = {}
  $metadata_providers     = {}
  $dataconnectors         = {}
  $attributes             = {}
  $filters                = {}

  $ss_version             = '1.14.11'
  $ss_install_base        = '/var/simplesamlphp'
  $ss_sp_host             = 'shibvm-sp.miamioh.edu'
  $ss_sp_port             = '31443'
  $ss_sp_url_path         = 'simplesaml'
  $ss_admin_password      = undef
  $ss_secret_salt         = undef
  $ss_cert_owner          = undef
  $ss_cert_group          = undef

  $ss_sp_domain = $ss_sp_port ? {
    undef   => $ss_sp_host,
    default => "${ss_sp_host}:${ss_sp_port}",
  }

}
