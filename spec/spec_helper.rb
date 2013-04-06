ENV["RAILS_ENV"] = "test"
require File.expand_path("../dummy_app/config/environment", __FILE__)
require 'rspec/autorun'
require 'capybara/rspec'
require 'rspec/rails'
Rails.backtrace_cleaner.remove_silencers!

RSpec.configure do |config|

  config.include RSpec::Matchers
  config.include Capybara::DSL, :type => :request

end