source :rubygems

gem 'rails', '3.2.11'
gem 'jquery-rails'
gem 'paginate'
gem 'simple_form'
gem 'friendly_id', '~> 4.0.9'
gem 'thin'
gem 'carrierwave'
gem 'rmagick'

group :development do
	gem "pry", :require => false
	gem "awesome_print", :require => false
	gem "pry-rails"
end

group :development, :test do
	gem "rspec-rails"
	gem "capybara"
   gem "sqlite3"
   #gem "database_cleaner"
   #gem 'cucumber'
end

group :test do
	gem "factory_girl"
	gem "factory_girl-preload"
end

group :production do
   gem "pg"
end