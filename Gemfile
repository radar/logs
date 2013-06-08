if RUBY_VERSION =~ /1.9/
  Encoding.default_external = Encoding::UTF_8
  Encoding.default_internal = Encoding::UTF_8
end

source 'https://rubygems.org'

gem 'rails', '3.2.13'

gem 'pg'
gem 'friendly_id', '4.0.8'
gem 'by_star', :git => "git://github.com/radar/by_star"

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  gem 'uglifier', '>= 1.0.3'
  gem 'therubyracer'
end

gem 'jquery-rails'

gem 'thor'

group :development, :test do
  gem 'simplecov'
  gem 'rspec-rails', '~> 2.10'
  gem 'capybara', '1.1.2'
  gem 'factory_girl', '4.0.0'
end
