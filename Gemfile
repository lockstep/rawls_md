# frozen_string_literal: true

source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

# Only define Ruby version once (i.e. for Heroku)
version_file = File.join(File.dirname(__FILE__), '.ruby-version')
ruby File.read(version_file).strip

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.1.0'

# Use postgresql as the database for Active Record
gem 'pg', '~> 0.18'

# Use Puma as the app server
gem 'puma', '~> 3.7'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0.4'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Turbolinks makes navigating your web application faster.
# Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'

# Application monitoring
gem 'newrelic_rpm'

# Authorization
gem 'pundit'

# Authentication
# Recent version needed for Rails 5.1
gem 'devise', github: 'plataformatec/devise', branch: :master

# API serialization
gem 'active_model_serializers', '~> 0.10.0'

# App configuration
gem 'figaro'

# Decorators
# Recent version needed for Rails 5+
gem 'draper', github: 'drapergem/draper', branch: :master

# Exception tracking
gem 'airbrake', '~> 6.0', require: false

# Frontend
gem 'bootstrap-sass'

# Job queue
gem 'sidekiq'

# Static pages
gem 'high_voltage', '~> 3.0.0'

# Dependency for Rails Admin
gem 'erubis', '~> 2.7'

# Admin gem
gem 'rails_admin', '~> 1.1.1'

group :production do
  gem 'lograge'
  gem 'rack-timeout'
  gem 'rails_12factor'
end

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'

  gem 'foreman'

  # Warn about n+1 queries and unused includes
  gem 'bullet'
  # Debug page speed and memory usage
  gem 'memory_profiler'
  gem 'rack-mini-profiler', require: false
  # Performance profiling, works with NewRelic in develop mode
  gem 'ruby-prof'

  # Use Pry instead of IRB
  gem 'pry-byebug'
  gem 'pry-doc'
  gem 'pry-rails'
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'rubocop', require: false
  # Spring speeds up development by keeping your application running in the background.
  # Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-commands-rspec'
  gem 'spring-watcher-listen', '~> 2.0.0'
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
end

group :test do
  gem 'bundler-audit', require: false
  gem 'capybara', '~> 2.13.0'
  gem 'database_cleaner'
  gem 'factory_girl_rails'
  gem 'poltergeist'
  gem 'rspec-rails', '~> 3.5'
  gem 'selenium-webdriver'
  gem 'shoulda-matchers'
  gem 'webmock'
end
