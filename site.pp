# Live servers
node 'www1.example.com' {
    include role::webserver
}

node 'www2.example.com' {
    include role::webserver
}

node default {
    fail('You have reached the default node, please classify your node in site.pp')
}
