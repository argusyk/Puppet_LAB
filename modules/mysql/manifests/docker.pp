class mysql::docker {
  docker::run { "mysql":
    image   => "mysql:latest",
    expose  => ["3306"],    
    env => [
      "MYSQL_DATABASE=my_database",
      "MYSQL_USER=my_user",
      "MYSQL_PASSWORD=my_password",
      "MYSQL_ROOT_PASSWORD=my_password",
    ],
    ensure  => $profile::mysql::status,
  }
}