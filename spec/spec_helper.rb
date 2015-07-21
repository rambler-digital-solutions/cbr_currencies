require 'rack/test'
require 'webmock/rspec'
require 'bundler/setup'
Bundler.require

if ENV['COVERAGE']
  require 'simplecov'
  SimpleCov.start
end

RSpec.configure do |config|
  config.include Rack::Test::Methods

  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.order = :random
  config.profile_examples = 3
  Kernel.srand config.seed

  WebMock.disable_net_connect!

  def load_fixture(path)
    File.open File.expand_path("fixtures/#{path}", File.dirname(__FILE__))
  end
end