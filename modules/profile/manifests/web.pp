class profile::web ($status='absent') {    
  include apache2::docker
  include nginx::docker
  include php::docker
}