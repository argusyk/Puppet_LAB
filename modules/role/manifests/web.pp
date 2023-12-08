class role::web {
    class { 'profile::web':
        status => 'present',
    }

    class { 'profile::memcached':
        status => 'absent',
    }

    class { 'profile::mysql':
        status => 'absent',
    }

}