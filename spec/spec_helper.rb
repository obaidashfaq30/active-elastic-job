require 'bundler/setup'
Bundler.setup

require 'pry-byebug'
require 'rails_eb_job'

require 'dotenv'
Dotenv.load

require File.expand_path('./helpers.rb', File.dirname(__FILE__))

RSpec.configure do |config|
  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
  config.include Helpers
end
