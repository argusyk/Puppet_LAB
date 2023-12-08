class profile {
    include docker
    include profile::web
    include profile::mysql
    include profile::memcached
}





