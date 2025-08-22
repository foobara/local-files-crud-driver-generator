require_relative "version"

source "https://rubygems.org"
ruby Foobara::Generators::LocalFilesCrudDriverGenerator::MINIMUM_RUBY_VERSION

gemspec

gem "rake"

group :development do
  gem "foobara-rubocop-rules", ">= 1.0.0"
  gem "guard-rspec"
  gem "rubocop-rake"
  gem "rubocop-rspec"
end

group :development, :test do
  gem "pry"
  gem "pry-byebug"
end

group :test do
  gem "foobara-spec-helpers", "< 2.0.0"
  gem "rspec"
  gem "rspec-its"
  gem "simplecov"
end
