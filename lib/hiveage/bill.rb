module Hiveage
  class Bill < Hiveage::Base
    alias :update_attributes :modify
    
    self.collection_name = "bills"

    def to_param
      hash_key 
    end

    def mark_as_payable
      post(:mark_as_payable)
    end
  end
end
