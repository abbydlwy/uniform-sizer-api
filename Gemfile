source "https://rubygems.org"

gem "rails", "~> 8.0.3"
gem "pg", "~> 1.1"
gem "puma", ">= 5.0"
gem "devise"
gem "devise-two-factor"

gem "sidekiq"
# gem "jbuilder"
gem "redis", ">= 4.0.1"
gem "rack-attack"
gem "rack-cors" # this is for handling cross origin resource sharing, just like in ajax, well, it makes that possible
gem "kaminari"

gem "bcrypt", "~> 3.1.7"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[ windows jruby ]

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", require: false

gem "dotenv-rails", groups: [:development, :test]

# [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
# gem "image_processing", "~> 1.2"

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin Ajax possible
# gem "rack-cors"

group :development, :test do
  # https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem "debug", platforms: %i[ mri windows ], require: "debug/prelude"

  # https://brakemanscanner.org/
  gem "brakeman", require: false

  # [https://github.com/rails/rubocop-rails-omakase/]
  gem "rubocop-rails-omakase", require: false

  gem "faker"
  gem "factory_bot_rails"
  gem "rspec-rails"
end


