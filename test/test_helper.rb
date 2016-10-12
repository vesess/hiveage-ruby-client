#require_relative '../lib/hiveage'
require 'hiveage'
require 'minitest/autorun'
require 'shoulda/context'
require 'mocha/setup'

#require 'mocha/test_unit'
#require 'minitest/autorun'
#require 'webmock/minitest'
#require 'vcr'

#VCR config
# VCR.config do |c|
#   c.cassette_library_dir = 'spec/fixtures'
#   c.stub_with :webmock
# end

module Hiveage
  @mock_rest_client = nil
  @api_key = nil

  def self.mock_rest_client=(mock_client)
    @mock_rest_client = mock_client
  end  

  def self.api_key=(key)
    @api_key = key
  end
end

class Minitest::Test
  include Mocha

  def setup
    @mock = mock
    Hiveage.mock_rest_client = @mock
    Hiveage.api_key = "foo"
  end

  def teardown
    Hiveage.mock_rest_client = nil
    Hiveage.api_key = nil
  end
end
