class apache2::docker {
    include docker
   
    docker::run { "apache2":
      image   => "ubuntu/apache2:latest",
      ports   => ["80:80"],
      ensure  => $profile::web::status,          
    }
  }