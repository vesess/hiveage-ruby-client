module Hiveage
  class ItemCategory < Hiveage::Base

    alias :update_attributes :modify

    self.prefix = "/categories/"
    self.collection_name = "items"
  end
end
