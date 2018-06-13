# Thin Resque Example
A small example of having Rack run Resque and a small Sintra app. Little else.

Basically borrowed from https://github.com/trineo/resque-example and watered it down even further.

(Largely for my own purposes.)

# Development Setup
## Redis Installation (OS X)
``` shell
brew install redis
```

## Ruby environment
Have RVM or rbenv setup already, and let them do any setup they need, as driven by .ruby-version and .ruby-gemset. Then:

``` shell
gem install bundler
bundle install
```

## Set up .env for local development
``` shell
cp .env.example .env
```
And edit as appropriate...and have dotenv do it's thing.

## Redis Startup
``` shell
redis-server
```

## Start up the app locally
Use foreman to fire up Rack->Sinatra, and Resque (see Procfile)
``` shell
foreman start
```