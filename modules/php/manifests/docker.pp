class php::docker {
    docker::image { 'php:8.0-fpmX':
      docker_file => '/vagrant/etc/php/Dockerfile'
    }
    docker::run { "php":
      image   => "php:8.0-fpmX",
      volumes => ['/vagrant/etc/php/php.ini:/usr/local/etc/php/php.ini',                   
                  '/vagrant/etc/www:/var/www/html'
                  ],
      hostname  => "php",
      ensure  => $profile::web::status,      
    }
  }  