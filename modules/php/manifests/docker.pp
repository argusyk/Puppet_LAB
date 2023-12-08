class php::docker {
    docker::run { "php":
      image   => "php:8.0-fpm",
      ports   => ["9000:9000"],
      ensure  => $profile::web::status,      
    }
  }  