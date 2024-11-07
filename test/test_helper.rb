require "simplecov"
SimpleCov.start "rails" do
  add_filter "app/channels"
  add_filter "app/jobs"
end

ENV["RAILS_ENV"] ||= "test"
require_relative "../config/environment"
require "rails/test_help"

module ActiveSupport
  class TestCase
    # Uncomment the following line if using Rails 6 or 7, as parallelize can interfere with SimpleCov
    # parallelize(workers: :number_of_processors)

    # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
    fixtures :all

    # Add more helper methods to be used by all tests here...
  end
end
