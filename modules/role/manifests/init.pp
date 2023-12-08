class role {
    include role::web
    include role::mysql
    include role::memcached
}