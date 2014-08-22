source 'https://rubygems.org'

# Please see blacklight.gemspec for dependency information.
gemspec path: File.expand_path('..', __FILE__)

# Peg simplecov to < 0.8 until this is resolved:
# https://github.com/colszowka/simplecov/issues/281
gem 'simplecov', '~> 0.7.1', require: false
gem 'coveralls', require: false

gem 'engine_cart', '~> 0.4'

group :test do
  gem "blacklight-marc", "~> 5.0", github: "projectblacklight/blacklight_marc"
  gem 'activerecord-jdbcsqlite3-adapter', :platform => :jruby
end

file = File.expand_path("Gemfile", ENV['ENGINE_CART_DESTINATION'] || ENV['RAILS_ROOT'] || File.expand_path("../spec/internal", __FILE__))
if File.exists?(file)
  puts "Loading #{file} ..." if $DEBUG # `ruby -d` or `bundle -v`
  instance_eval File.read(file)
else
  gem 'rails', ENV['RAILS_VERSION'] if ENV['RAILS_VERSION']

  # explicitly include sass-rails to get compatible sprocket dependencies
  gem 'sass-rails'
end
