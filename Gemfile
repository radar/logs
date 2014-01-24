if RUBY_VERSION =~ /1.9/
  Encoding.default_external = Encoding::UTF_8
  Encoding.default_internal = Encoding::UTF_8
end

source 'https://rubygems.org'

gem 'rails', '4.0.0'

gem 'pg'
gem 'friendly_id', '4.0.8'
gem 'by_star', :git => "git://github.com/radar/by_star"
gem 'kaminari', '0.14.1'

group :assets do
  gem 'sass-rails',   '~> 4.0.0'
  gem 'coffee-rails', '~> 4.0.0'

  gem 'uglifier', '>= 1.0.3'
  gem 'therubyracer'
end

gem 'jquery-rails'

gem 'thor'

group :development, :test do
  gem 'simplecov'
  gem 'rspec-rails', '~> 2.10'
  gem 'capybara', '2.1'
  gem 'factory_girl', '4.0.0'
  gem 'pry'
  gem 'launchy'
end

group :development do
  gem 'capistrano', '~> 3.0'
  gem 'capistrano-bundler', '1.1.1'
  gem 'capistrano-rails', '1.1.0'
  gem 'capistrano-rbenv', '~> 2.0'
end
