require File.expand_path('../../test_helper.rb', __FILE__)

module Hiveage
  class NetworkTest < Minitest::Test
    should "network should be listable" do
      @mock.expects(:get).once.returns(create_response(create_network))

      c = Hiveage::Network.new()
      puts c.to_json

      assert c.kind_of? Array
      assert c[0].kind_of? Stripe::Customer
    end
  end
end
