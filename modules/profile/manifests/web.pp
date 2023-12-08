class profile::web ($status='absent') {
  $st = $status
  include apache2::docker
  include nginx::docker
  include php::docker
}