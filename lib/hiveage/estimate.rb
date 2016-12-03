module Hiveage
  class Estimate < Hiveage::Base
    alias :update_attributes :modify
    
    self.collection_name = "estm"

    def to_param
      hash_key 
    end

    ## Deliver
    def deliver
      post(:deliver)
    end

    ## Actions
    def mark_as_sent
      post(:mark_as_sent)
    end

    def mark_as_accept
      post(:mark_as_accept)
    end
  end
end
