require File.expand_path('../test_helper.rb', __FILE__)

class HiveageTest < Minitest::Test

  should 'has a version number' do
    assert_equal '0.1.0', Hiveage::VERSION
  end

  should 'not have a default api key' do
    assert_nil Hiveage::Base.user
  end

  should 'have a user configuration for ActiveResource::Base class' do
    Hiveage.configure do |c|; c.api_key ='apiKey'; c.subdomain = 'test';end

    assert_equal 'apiKey', Hiveage::Base.user
    assert_equal 'test.hiveage.local', Hiveage::Base.site.host
    assert_equal ActiveResource::Formats::JsonFormat, Hiveage::Base.format
  end
end
