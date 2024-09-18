# frozen_string_literal: true

source 'https://rubygems.org'

ruby '3.3.5'

# Core Rails functionality
gem 'rails', '~> 7.2.0', '>= 7.2.1'

# Authentication and Authorization
gem 'cancancan' # Role-based access control
gem 'devise' # User authentication

# Asset and CSS Bundling
gem 'bootstrap', '~> 5.3', '>= 5.3.3' # Bootstrap for styling
gem 'cssbundling-rails' # CSS bundling
gem 'jsbundling-rails' # JavaScript bundling
gem 'sprockets-rails' # Asset pipeline for Rails

# Database
gem 'pg', '~> 1.1' # PostgreSQL for Active Record

# Web server
gem 'puma', '< 7' # Puma web server

# Hotwire
gem 'stimulus-rails'               # Hotwire Stimulus for modest JS framework
gem 'turbo-rails'                  # Hotwire Turbo for SPA-like behavior

# API and JSON generation
gem 'jbuilder' # Build JSON APIs with Jbuilder

# Windows-specific dependencies
gem 'tzinfo-data', platforms: %i[windows jruby]

# Performance
gem 'bootsnap', require: false # Reduces boot times through caching

# Development and Test environments
group :development, :test do
  gem 'debug', platforms: %i[mri windows]  # Debugging tools for Rails
  gem 'rspec-rails'                        # RSpec for testing in Rails
end

group :development do
  # Web console and deployment tools
  gem 'bcrypt_pbkdf'                       # Password hashing algorithm
  gem 'capistrano'                         # Automate deployment
  gem 'capistrano3-puma', github: 'seuros/capistrano-puma' # Puma integration with Capistrano
  gem 'capistrano-rails'                   # Rails-specific Capistrano tasks
  gem 'capistrano-rbenv'                   # rbenv support for Capistrano
  gem 'ed25519'                            # Ed25519 SSH key support for deployments
  gem 'web-console'                        # Use console on exceptions pages

  # RuboCop for linting and code quality
  gem 'rubocop'                            # Base RuboCop
  gem 'rubocop-capybara'                   # RuboCop extension for Capybara
  gem 'rubocop-factory_bot'                # RuboCop extension for Factory Bot
  gem 'rubocop-rails'                      # RuboCop extension for Rails
  gem 'rubocop-rspec'                      # RuboCop extension for RSpec
  gem 'rubocop-rspec_rails'                # RuboCop extension for RSpec in Rails
end

group :test do
  # Testing tools and helpers
  gem 'capybara'                           # System testing in Rails
  gem 'factory_bot_rails'                  # Factories for testing
  gem 'faker'                              # Generate fake data for testing
  gem 'jsonapi-rspec'                      # RSpec matchers for JSON:API specs
  gem 'rspec-sidekiq'                      # Test Sidekiq jobs with RSpec
  gem 'selenium-webdriver'                 # Browser automation for system tests
  gem 'shoulda-matchers'                   # Matchers for unit tests
  gem 'simplecov'                          # Code coverage analysis
  gem 'simplecov_json_formatter'           # JSON formatter for SimpleCov
  gem 'vcr'                                # Record HTTP interactions for testing
  gem 'webmock'                            # Stubs HTTP requests in tests
end
