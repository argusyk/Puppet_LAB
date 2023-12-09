class memcached::docker {  
  docker::run { "memcached":
    image   => "memcached:latest",
    ports  => ["11212:11211"],
    ensure  => $profile::memcached::status,
  }
}