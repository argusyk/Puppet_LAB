class role::memcached {
    class { 'profile::web':
        status => 'absent',
    }

    class { 'profile::memcached':
        status => 'present',
    }

    class { 'profile::mysql':
        status => 'absent',
    }

}