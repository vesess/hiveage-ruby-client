module Hiveage
  class Invoice < Hiveage::Base
    alias :update_attributes :modify
    
    self.collection_name = "invs"

    def to_param
      hash_key 
    end

    ## Payments
    def payments
      InvoicePayment.all_payments(params: { hash_key: self.hash_key })
    end

    def find_payment(id)
      InvoicePayment.find_by_id(id, params: { hash_key: self.hash_key })
    end

    def modify_payment(id, params={})
      InvoicePayment.update_by_id(id, { hash_key: self.hash_key, payment: params })
    end

    def create_payment(attributes={})
      InvoicePayment.create_by_invoice({ hash_key: self.hash_key }.merge(payment: attributes))
    end
    
    def destroy_payment(id)
      InvoicePayment.destroy_by_id(id, { hash_key: self.hash_key })
    end

    ## Deliver
    def deliver
      response = post(:deliver)
    end

    def reminder
      response = post(:reminder)
    end
  end
end
