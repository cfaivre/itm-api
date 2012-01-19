source 'http://rubygems.org'

gem 'rails', '3.1.3'

# Bundle edge Rails instead:
# gem 'rails',     :git => 'git://github.com/rails/rails.git'

gem 'sqlite3'
gem 'activeadmin'
gem 'capistrano'
gem 'capistrano-ext'
gem 'passenger'
gem 'activerecord-mysql-adapter'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.1.5'
  gem 'coffee-rails', '~> 3.1.1'
  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'

group :development, :test do
  gem 'sqlite3-ruby', :require => 'sqlite3'
  gem 'rake', '~> 0.9.2.2', :require => false
  gem 'haml', '~> 3.1.1', :require => false
  gem 'yard'
  gem 'rdiscount' # For yard
end

group :test do
  # Pretty printed test output
  gem 'turn', '0.8.2', :require => false
  gem 'rspec-rails', '~> 2.8.1'
  gem 'cucumber-rails', '1.2.1'
  gem 'capybara', '1.1.2'
  gem 'database_cleaner'
  gem 'shoulda', '2.11.2', :require => nil
  gem 'launchy'
  gem 'jslint_on_rails', '~> 1.0.6'
  gem 'guard-rspec'
end
