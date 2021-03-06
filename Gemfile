source 'http://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


# Use Devise for user authentication
gem 'devise', '~> 4.5'

#Use Stripe for payment processing
gem 'stripe', '1.48.0'

#Use Figaro for ENV variables
gem 'figaro', '1.1.1'

# Use Paperclip for image upload
gem 'paperclip', '4.3.6'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.1.2'

# Use Puma as the app server
gem 'puma', '~> 3.7'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets - Comment out for Chartkick to work in Heroku
gem 'uglifier', '>= 3.0.4'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

#Use Twitter Bootstrap Library for front-end UI and Layout
gem 'bootstrap-sass', '~> 3.3.7'

# Use Font Awesome sass gem for adding icons
gem 'font-awesome-sass', '4.6.2'

# Use Hirb for better database table display in console
gem 'hirb', '0.7.3'

gem 'rb-readline'

gem 'autoprefixer-rails'

gem 'jquery-rails', '4.1.1'

gem 'acts_as_votable', '~> 0.10.0'

gem 'pusher'

gem 'chartkick'

gem 'simple_form', '~> 4.1'

gem 'groupdate'



group :development, :test do
  # Use sqlite3 as the database for Active Record
  gem 'sqlite3', '1.3.12'
  
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '~> 2.13'
  gem 'selenium-webdriver'
end


group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :production do
  # Use the PostgreSQL gem for Heroku production servers
  gem 'pg', '0.18.4'

end
