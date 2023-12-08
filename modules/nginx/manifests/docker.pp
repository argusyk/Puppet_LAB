class nginx::docker {    
    docker::run { "nginx":
      image   => "nginx:latest",
      ports   => ["8081:80"],
      ensure  => $profile::web::status,         
    }
  }