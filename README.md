Heroku addons:where
===================

Heroku CLI plugin that adds a `where` subcommand to the `addons` command to allow addons in use to be easily located based on their name

    heroku plugins:install https://github.com/johnbeynon/heroku-addons-where.git

Running eg:

    heroku addons:where memcache

Result:

    $ heroku addons:where memcache
    Searching your applications that are using addons named like 'memcache'...
    cheesy-feet-124 is using memcache:5mb
    salty-balls-432 is using memcachier:dev

What it does

Retrieves your application list and inspects each one for addons that match the
passed attribute



