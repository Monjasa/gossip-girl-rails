source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.6'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 6.0.3'
# Pg is the Ruby interface to the PostgreSQL RDBMS. It works with PostgreSQL 9.2 and later.
gem 'pg', '~> 1.2', '>= 1.2.3'
# Use Puma as the app server
gem 'puma', '~> 4.1'
# Use SCSS for stylesheets
gem 'sass-rails', '>= 6'
# Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
gem 'webpacker', '~> 4.0'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.7'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Active Storage variant
gem 'image_processing', '~> 1.2'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.2', require: false
# A modern CSS framework based on Flexbox
gem 'bulma-rails', '~> 0.8.0'
# Forms made easy!
gem 'simple_form', '~> 5.0', '>= 5.0.2'
# A configurable and documented Rails view helper for adding gravatars into your Rails application
gem 'gravatar_image_tag', '~> 1.2'
# Flexible authentication solution for Rails with Warden
gem 'devise', '~> 4.7', '>= 4.7.1'
# New wave Internationalization support for Ruby
gem 'i18n', '~> 1.8', '>= 1.8.2'
# This gem provides jQuery and the jQuery-ujs driver for your Rails 4+ application.
gem 'jquery-rails', '~> 4.4'
# Official AWS Ruby gem for Amazon Simple Storage Service (Amazon S3)
gem 'aws-sdk-s3', '~> 1.64', require: false
# Use world flag icons in your Rails app
gem 'world-flags', '~> 0.6.6'
# Countries and languages in I18n.locale for select_tag or output in 85 languages
gem 'countries_and_languages', '~> 0.2.0', :require => 'countries_and_languages/rails'
# Simple authorization solution for Rails. All permissions are stored in a single location
gem 'cancancan', '~> 3.1'
# Very simple Roles library without any authorization enforcement supporting scope on resource objects (instance or class)
gem 'rolify', '~> 5.2'
# FriendlyId is the "Swiss Army bulldozer" of slugging and permalink plugins for Active Record
gem 'friendly_id', '~> 5.3'

# Nokogiri (鋸) is an HTML, XML, SAX, and Reader parser.
gem 'nokogiri', '~> 1.11'
# This gem brings you the power of the premailer gem to Rails without any configuration needs
gem 'premailer-rails', '~> 1.11', '>= 1.11.1'
# Ruby on rails wrapper for Bulma framework extensions
gem 'bulma-extensions-rails', '~> 6.2', '>= 6.2.7'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code
  gem 'web-console', '>= 3.3.0'
  # Provides a better error page for Rails and other Rack apps
  gem 'better_errors', '~> 2.7', '>= 2.7.1'
  # Guard is a command line tool to easily handle events on file system modifications
  gem 'guard', '~> 2.16', '>= 2.16.2'
  # Generate and install a favicon for all platforms with RealFaviconGenerator
  gem 'rails_real_favicon', '~> 0.1.0'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  # Easy installation and use of web drivers to run system tests with browsers
  gem 'webdrivers'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
