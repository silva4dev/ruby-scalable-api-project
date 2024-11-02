# frozen_string_literal: true

source 'https://rubygems.org'

git_source(:github) { |repo_name| "https://github.com/#{repo_name}" }

ruby '3.3.0'

gem 'sorbet'
gem 'sorbet-runtime'
gem 'uuid'

group :development, :test do
  gem 'byebug'
  gem 'minitest'
  gem 'pry'
  gem 'rubocop'
  gem 'rubocop-minitest'
  gem 'rubocop-performance'
  gem 'simplecov'
  gem 'tapioca', require: false
end
