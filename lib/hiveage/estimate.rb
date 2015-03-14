module Hiveage
  class Estimate < Hiveage::Base
    alias :update_attributes :modify
    
    self.collection_name = "estm"

    def to_param
      hash_key 
    end

    ## Deliver
    def deliver
      response = post(:deliver)
    end
  end
end
