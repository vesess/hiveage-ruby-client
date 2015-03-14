module Hiveage
  class RecurringInvoice < Hiveage::Base
    alias :update_attributes :modify
    
    self.collection_name = "rinv"

    def to_param
      hash_key 
    end

    def invoices(params={})
      response = get(:invoices, params)

      Invoice.send(:instantiate_collection, response)
    end
  end
end
