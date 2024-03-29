source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.0.1'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 6.1.3.1'
# Use postgresql as the database for Active Record
gem 'pg', '>= 0.18', '< 2.0'
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
gem 'redis', '~> 4.0'
# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Active Storage variant
# gem 'image_processing', '~> 1.2'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.2', require: false

gem 'devise'

gem 'autoprefixer-rails'
gem 'font-awesome-sass'
gem 'simple_form'
# For seeing speed badge of every HTML page in dev and production.  But here?  Or in other part?
gem 'rack-mini-profiler'
gem 'memory_profiler'
gem 'stackprof'
gem 'faker'
gem 'cloudinary'
gem 'rqrcode' 
# God fucking damnit.  Suck it up and do it.  
# gem "pundit"
gem 'open-uri'
gem 'acts-as-taggable-on', '~> 7.0'
gem 'geocoder'
gem 'cloudinary'
# You need proof via photo validations, I hope that this shit works long term.
gem 'active_storage_validations'





group :development, :test do  gem 'pry-byebug'
  gem 'pry-rails'
  gem 'dotenv-rails'
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  # App Academy recommended rSpec combo.
  gem 'rspec-rails'
  gem 'factory_bot_rails'
  gem 'rails-controller-testing'

end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  # To work with Rails Panel Chrome Extension.
  gem 'meta_request', :git => 'git://github.com/dejan/rails_panel'
  # Makes Ruby change recommendations for a faster app.
  gem 'fasterer', '~> 0.1.9'
  # Hunt down N + 1 queries better.
  gem 'bullet'
  # Another N + 1 gem to cover bullet's redundancies.
  gem 'prosopite'
  # For having a better error page in development with console.
  gem "better_errors"
  gem "binding_of_caller"
  # To help keep the DB robust and healthy.  Check docs.
  gem 'active_record_doctor'

end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  # Easy installation and use of web drivers to run system tests with browsers
  gem 'webdrivers'
  # App academy recommendations.
  gem 'guard-rspec'
  gem 'launchy'
  gem 'shoulda-matchers'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
