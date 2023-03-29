ENV["RAILS_ENV"] ||= "test"
require_relative "../config/environment"
require "rails/test_help"
require "minitest/reporters"
Minitest::Reporters.use!
class ActiveSupport::TestCase
  # Run tests in parallel with specified workers
  parallelize(workers: :number_of_processors)

  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...
  include ApplicationHelper

  # Returns true if test user is logged in,
  # it's the same as logged_in? method but available in test environment.
  # Apparently the helper methods like logged_in? is not available in tests
  # but the session method is available because the this is a rails method?
  # it's also  a good idea that the test ehlper method has a different name
  # seems the test will call the logged_in? method, but is contains another method, the current user method.
  # It seems a bit cunfusing and contradictory. maybe the solution is that it could be available if we included it.

  def is_logged_in?
    !session[:user_id].nil?
  end
end
