class memcached::docker {  
  docker::run { "memcached":
    image   => "memcached:latest",
    expose  => ["11211"],
    ensure  => $profile::memcached::status,
  }
}