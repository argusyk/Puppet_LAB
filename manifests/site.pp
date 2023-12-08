node /web/ {
    include ::role::web
}

node /mysql/ {
    include ::role::mysql
}

node /memcached/ {
    include ::role::memcached
}

