class role::mysql {
    class { 'profile::web':
        status => 'absent',
    }

    class { 'profile::memcached':
        status => 'absent',
    }

    class { 'profile::mysql':
        status => 'present',
    }

}