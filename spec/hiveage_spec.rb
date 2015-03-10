require_relative 'spec_helper'

describe Hiveage::Config do
  it 'has a version number' do
    Hiveage::VERSION.wont_equal nil
  end

  it 'has a default api key' do
    assert_equal "your_api_key", Hiveage::Config.api_key
  end

  it "define 'get' network given hash_key" do
    network = Hiveage::Network.find("Uv1xF6KVxj9GoA")

    puts network.to_json

    assert_equal "Sameera", network[:name]
  end
end
