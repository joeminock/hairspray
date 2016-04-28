source 'https://rubygems.org'

ruby "2.2.3"

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.5'
# Use sqlite3 as the database for Active Record
gem 'sqlite3' , group: :development
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Bootstrap Gem
gem 'bootstrap-sass', '~> 3.3', '>= 3.3.6'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

#USER AUTHENTICATION
#devise
gem 'devise', '~> 3.5', '>= 3.5.3'

#IMAGE MANAGEMENT
gem 'paperclip'

gem 'geocoder'

#JQUERY UI
gem 'jquery-ui-rails'

#SEARCH
gem 'ransack'

#AWS IMAGE STORE
gem 'aws-sdk', '~> 1'

#CLEAN URLS
gem 'friendly_id', '~> 5.1'



# PRODUCTION ENV
group :production do 
	# Postgres for heroku production environment
	gem 'pg'
	# heroku gem
	gem 'rails_12factor'
	#Heroku Server
	gem 'puma'
  #New Relic
  gem 'newrelic_rpm', '~> 3.15', '>= 3.15.2.317'
end

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'
  #BETTER ERRORS AND TROUBLESHOOTING
gem 'better_errors', '~> 2.1', '>= 2.1.1'
gem 'binding_of_caller', '~> 0.7.2'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

