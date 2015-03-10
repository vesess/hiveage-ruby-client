#$LOAD_PATH.unshift File.expand_path('../lib', __FILE__)

require_relative '../lib/hiveage'

#require 'hiveage'

#we need the actual library file
#require_relative '../lib/dish'
# For Ruby < 1.9.3, use this instead of require_relative
# require(File.expand_path('../../lib/dish', __FILE__))
 
#dependencies
require 'minitest/autorun'
require 'webmock/minitest'
require 'vcr'

#VCR config
VCR.config do |c|
  c.cassette_library_dir = 'spec/fixtures'
  c.stub_with :webmock
end
