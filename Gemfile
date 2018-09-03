source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end
gem 'activeadmin'
gem 'devise'
gem 'cancan'
gem 'draper'
gem 'pundit'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.0.2'

gem 'thin'
#gem 'puma', '~> 3.0'

gem 'sass-rails', '~> 5.0'

gem 'uglifier', '>= 1.3.0'

gem 'coffee-rails', '~> 4.2'

gem 'therubyracer', platforms: :ruby


gem 'jquery-rails'

gem 'turbolinks', '~> 5'


gem 'haml-rails'

gem 'rufus-scheduler'

group :production do
  gem 'pg'
end

group :development, :test do
  gem 'sqlite3'
  
  gem 'byebug', platform: :mri
  gem 'better_errors'
  gem 'capybara'
  gem 'selenium-webdriver'
  gem 'chromedriver-helper'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'annotate'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

gem 'twitter'