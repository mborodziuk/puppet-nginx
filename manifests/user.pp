class nginx::user{
        user { 'user1':
          ensure => present,
          comment => 'First and Second Name',
          home => '/home/user1',
          managehome => true,
          }
        ssh_authorized_key { 'user1':
          user => 'user1',
          type => 'rsa',
          key  => 'AAAAB3NzaC1yc2EAAAADAQABAAACAQDHVMyMyR66Sf4UI0xU3bHStMujeGWIKUMxxgOWd8o+rRu0/tvkf2E6AB0blYbKHNwU469rqvUs/mJTWmZYLB45Do52ODUFR25Ypa6039BE3g96OKntdTMwzkj4qhUJMC1GG50VSicsE6BNj9qGWDPmCl1Ri+tg+laBjpYZL2JTVXKAmun7eMtKyO1FarMMsJvvBLqVa3annOxUKMQSYJVolr6YvFQOjcqgK4Ivv4QF7J4D/4Y+Sb3wtb/qjHCN5XAZpcdPeTyyjY6nfpQmvWBWZxsn+BgK9luugf8igXR+1+oF6lzTUub1aVEbPdUau/n+WHjZDJ1k7Eyrc9aFk9PiC5IeUKnbjfgwt5hxurVxc4Sf2iwjTuY7am2z8qNKUrTtOSuL4h5wtTrwj55m91Kgg/axgodbsh0UZmDoq99vBFOgtQxMlrf3G+vNPzLaNJRFqNzfiqUmiwO301lA0+i8aCMSyfKjtNBzejiJ5vNy33Jh6QbuLvMV2AFeRZcVCfB9T8MYn194ModE2eHH6jEaa3hypW4rPwKPKhPbONjL+RYLFUU5AxO7YStH3U20A7/GkcNK6WQ3X00xy1asiME0/AV5S4MOl/z471I8YYneBoMqJ48BvfPe7xFB2Ay2uEqLUbT4FzVXkElG/mEXqE2WotSHbqSWgtPsav2r/EH33Q==',
          }
}

