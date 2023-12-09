class nginx::docker {    
    docker::run { "nginx":
      image   => "nginx:latest",
      ports   => ["8081:80"],
      volumes => ['/vagrant/etc/nginx/nginx.conf:/etc/nginx/nginx.conf',                   
                  '/vagrant/etc/www:/var/www/html'
                  ],
      env     => ['NGINX_HOST=localhost'],
      depends => ['apache2'],
      after => ['apache2'],
      hostname => "nginx", 
      links => ['apache2:apache'],
      extra_parameters => [ '--restart=always' ],
      ensure  => $profile::web::status,
    }
  }