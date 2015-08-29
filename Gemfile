if RUBY_VERSION =~ /1.9/
  Encoding.default_external = Encoding::UTF_8
  Encoding.default_internal = Encoding::UTF_8
end

source 'https://rubygems.org'

gem 'rails', '4.2.4'

gem 'pg'
gem 'friendly_id', '4.0.8'
gem 'by_star', :git => "git://github.com/radar/by_star"
gem 'kaminari', '0.14.1'

gem 'sass-rails',   '~> 4.0.0'
gem 'coffee-rails', '~> 4.0.0'

gem 'jquery-rails'

gem 'thor'
gem 'responders'

group :development, :test do
  gem 'simplecov'
  gem 'rspec-rails', '~> 2.10'
  gem 'capybara', '2.1'
  gem 'factory_girl', '4.0.0'
  gem 'pry'
  gem 'launchy'
end

group :development do
  gem 'highline'
  gem 'capistrano', '~> 3.4'
  gem 'capistrano-bundler', '1.1.4'
  gem 'capistrano-rails', '1.1.3'
  gem 'capistrano-chruby'
end

gem 'unicorn'
