module Hiveage
  class TripCategory < Hiveage::Base
    alias :update_attributes :modify
    
    self.prefix = "/categories/"
    self.collection_name = "trips"
  end
end
