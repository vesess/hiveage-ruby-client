module Hiveage
  class MileageEntry < Hiveage::Base
    alias :update_attributes :modify
    
    self.collection_name = "mileage"
  end
end
