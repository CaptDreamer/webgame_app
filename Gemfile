source 'https://rubygems.org'
ruby '2.1.1'
#ruby-gemset=railstutorial_rails_4_0

gem 'rails', '>= 4.0.4'
gem 'bootstrap-sass', '~> 3.1.1'
gem 'bcrypt-ruby', '~> 3.1.5'
# gem 'will_paginate', '3.0.4'
gem 'will_paginate-bootstrap'
gem 'holder_rails'

group :development, :test do
  gem 'sqlite3'
  gem 'rspec-rails', '~> 2.14.2'
  # The following optional lines are part of the advanced setup.
  gem 'guard-rspec', require: false
  gem 'spork-rails'
  gem 'guard-spork'
  gem 'childprocess', '~> 0.5.1'
end

group :test do
  gem 'selenium-webdriver', '~> 2.40.0'
  gem 'capybara'
  gem 'factory_girl_rails'
  # gem 'cucumber-rails', '1.4.0', :require => false
  # gem 'database_cleaner', github: 'bmabey/database_cleaner'
  # gem 'launchy'

  # Uncomment this line on OS X.
  gem 'growl', '~> 1.0.3'
end

gem 'sass-rails', '~> 4.0.2'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 1.2'

group :doc do
  gem 'sdoc', require: false
end

group :production do
  gem 'pg', '~> 0.17.1'
  gem 'rails_12factor'
end