source 'http://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.0'

ruby "2.0.0"

group :development do
  gem 'pg' 
  gem 'lunchy' 
end

group :development, :test do 
	gem 'rspec-rails' #includes RSpec in a wrapper to make it play nice with Rails 3 
	gem 'factory_girl_rails' 
end

group :test do
	gem 'faker' #generates emails, names and other placeholders for factories
	gem 'capybara' #makes it easy to simulate user interaction
	gem 'guard-rspec' #runs spec automatically when it detects changes
	gem 'launchy' #opens default web browser upon failed integration specs 
end


# Use postgresql as the database for Active Record
gem 'pg'

gem 'rails_12factor', group: :production

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.0'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 2.1.1'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

#paginate the blog posts 
gem 'will_paginate', '~> 3.0'

#rich text editor for blog
gem 'ckeditor'
gem 'paperclip'

# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]
