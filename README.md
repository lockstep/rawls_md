# README

Template for new Rails projects. 

## Getting started

To get going clone this repository and perform the following steps:

1. Clone this repository
1. You can now run `scripts/setup`, which will help you in configuring the template.
   Alternatively perform all of the following steps manually.
1. Change application name in `config/application.rb`.
1. Update `database.yml` to reflect the new application name.
1. If you plan on using Figaro, copy `config/application.yml.example` to `config/application.yml`.
1. If you don't plan on tracking the template, you can remove the `.git` directory. 
   Otherwise you can rename the remote:   
   ```shell
   $ git remote rename origin rails_new
   ```
1. Add your new remote as appropriate.

## Optional configurations

* If you want to use [AirBrake](https://airbrake.io), make sure the following 2 environment variables are set:
    * `AIRBRAKE_PROJECT_ID`
    * `AIRBRAKE_API_KEY`
* [New Relic](https://newrelic.com) is pre configured in `config/newrelic.yml`, 
  but you need to comment in the environment variables for it work on Heroku 
  (lines 10 and 17).

## Contents

All of the following have been installed and pre-configured.

### Base system

* Rails 5.1.0.pre1
* Ruby 2.3.4
* [pg](https://github.com/ged/ruby-pg) for `ActiveRecord`
* The app is preconfigured for Google Analytics, just add `GOOGLE_ANALYTICS_ID` to the environment.

### General
 
* [active_model_serializers](https://github.com/rails-api/active_model_serializers)
* [bootstrap-sass](https://github.com/twbs/bootstrap-sass)
* [draper](https://github.com/drapergem/draper)
* [figaro](https://github.com/laserlemon/figaro)
* [pundit](https://github.com/elabs/pundit)
* [sidekiq](https://github.com/mperham/sidekiq)

### Development

* [foreman](https://github.com/ddollar/foreman)
* [newrelic_rpm](https://github.com/newrelic/rpm) 
* [pry](https://github.com/rweng/pry-rails)
* [pry-byebug](https://github.com/deivid-rodriguez/pry-byebug)
* [pry-doc](https://github.com/pry/pry-doc)
* [RuboCop](https://github.com/bbatsov/rubocop)

### Test

* [bullet](https://github.com/flyerhzm/bullet)
* [bundler-audit](https://github.com/rubysec/bundler-audit)
* [capybara](https://github.com/teamcapybara/capybara)
* [database_cleaner](https://github.com/DatabaseCleaner/database_cleaner)
* [devise](https://github.com/plataformatec/devise)
* [factory_girl_rails](https://github.com/thoughtbot/factory_girl_rails)
* [high_voltage](https://github.com/thoughtbot/high_voltage)
* [memory_profiler](https://github.com/SamSaffron/memory_profiler)
* [poltergeist](https://github.com/teampoltergeist/poltergeist)
* [rack-mini-profiler](https://github.com/MiniProfiler/rack-mini-profiler)
* [shoulda-matchers](https://github.com/thoughtbot/shoulda-matchers)
* [spring-commands-rspec](https://github.com/jonleighton/spring-commands-rspec)
* [webmock](https://github.com/bblimke/webmock)

### Production

* [rails_12factor](https://github.com/heroku/rails_12factor)
* [airbrake](https://github.com/airbrake/airbrake)
* [rake-timeout](https://github.com/heroku/rack-timeout)
* [lograge](https://github.com/roidrage/lograge)

## Removed

The following default Rails gems have been removed:

* [coffee-rails](https://github.com/rails/coffee-rails)
* [jbuilder](https://github.com/rails/jbuilder)
