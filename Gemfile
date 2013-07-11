source 'https://rubygems.org'

# specify ruby version for heroku
ruby "1.9.3"

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.0.rc1'

# use unicorn as web server
gem 'unicorn'

# Don't show asset requests in dev log
gem 'quiet_assets'

# For Heroku
gem 'rails_12factor', group: :production

#authentication
gem 'rubycas-client-rails'
gem 'rubycas-client', '2.2.1'

# Cleaner forms
gem 'simple_form'

# Use sqlite3 as the database for Active Record
gem 'sqlite3', group: :development

# Use postgres as the database for heroku
gem 'pg', group: :production

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.0.rc1'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
# Disabling turbolinks for now
# gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.0.1'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

group :development, :test do
  gem 'rspec-rails', '~> 2.0'
  gem "factory_girl_rails", "~> 4.0"
  gem 'shoulda'
end
