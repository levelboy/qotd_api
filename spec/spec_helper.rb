require 'rubygems'

ENV['RACK_ENV'] ||= 'test'

require 'rack/test'

require File.expand_path('../../config/environment', __FILE__)

module RakeTestHelper
  extend ActiveSupport::Concern

  included do
    include Rack::Test::Methods
  end

  def app
    QOTD::App.instance
  end
end

RSpec.configure do |config|
  config.mock_with :rspec
  config.expect_with :rspec
  config.raise_errors_for_deprecations!
  config.include RakeTestHelper, file_path: %r{spec\/api}
end
