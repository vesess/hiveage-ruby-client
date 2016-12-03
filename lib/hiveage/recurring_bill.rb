module Hiveage
  class RecurringBill < Hiveage::Base
    alias :update_attributes :modify
    
    self.collection_name = "rbill"

    def to_param
      hash_key 
    end

    def bills(params={})
      response = get(:bills, params)

      Bill.send(:instantiate_collection, response)
    end

    def activate
      post(:activate)
    end

    def close
      post(:close)
    end

    def pause
      post(:pause)
    end

    def resume
      post(:resume)
    end

  end
end
