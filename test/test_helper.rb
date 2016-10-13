require 'hiveage'
require 'minitest/autorun'
require 'shoulda/context'
require 'mocha/setup'
require File.expand_path('../test_data', __FILE__)

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
  include Hiveage::TestData
  include Mocha

  def setup
    @mock = mock
    Hiveage.mock_rest_client = @mock
  end

  def teardown
    Hiveage.mock_rest_client = nil
    Hiveage.api_key = nil
  end
end
