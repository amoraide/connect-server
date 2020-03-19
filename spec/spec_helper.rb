ENV['RAILS_ENV'] = 'test'
test_type = ENV['TEST_TYPE']

require File.expand_path('../../config/environment', __FILE__)

# Checks for pending migrations before tests are run.
# If you are not using ActiveRecord, you can remove this line.
ActiveRecord::Migration.check_pending!

require 'rspec/rails'
require 'capybara/rspec'

