class php::docker {
    docker::run { "php":
      image   => "php:8.0-fpm",
      volumes => ['/vagrant/etc/php/php.ini:/usr/local/etc/php/php.ini',                   
                  '/vagrant/etc/www:/var/www/html'
                  ],
      hostname  => "php",
      ensure  => $profile::web::status,      
    }
  }  