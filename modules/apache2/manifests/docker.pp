class apache2::docker {
    include docker
   
    docker::run { "apache2":
      image   => "httpd:2.4",
      volumes => ['/vagrant/etc/httpd/httpd.conf:/usr/local/apache2/conf/httpd.conf',                   
                  '/vagrant/etc/www:/var/www/html'
                  ],      
      hostname  => "apache2",
      links => ['php:php'], 
      ensure  => $profile::web::status,          
    }
  }