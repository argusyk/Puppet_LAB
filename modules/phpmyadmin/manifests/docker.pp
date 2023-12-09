class phpmyadmin::docker {    
    docker::run { "phpmyadmin":
      image   => "phpmyadmin/phpmyadmin:latest",
      ports   => ["8082:80"],      
      env     => ['MYSQL_ROOT_PASSWORD=root', 'PMA_HOST=mysql'],
      depends => ['mysql'],
      after => ['mysql'],
      hostname => "phpmyadmin", 
      links => ['mysql:mysql'],      
      ensure  => $profile::mysql::status,
    }
  }