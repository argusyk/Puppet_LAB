class profile::mysql ($status='absent') {
    include mysql::docker
    include phpmyadmin::docker
}
