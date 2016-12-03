module Hiveage
  class Network < Hiveage::Base
    alias :update_attributes :modify
    
    def to_param
      hash_key 
    end

    ## b.invoices(page; 2)
    def invoices(params={})
      response = get(:invoices, params)

      Invoice.send(:instantiate_collection, response)
    end

    def estimates(params={})
      get(:estimate, params)

      Estimate.send(:instantiate_collection, response)
    end

    def recurring_invoices(params={})
      get(:recurring_invoices, params)

      RecurringInvoice.send(:instantiate_collection, response)
    end

    ## Contact
    def contacts
      Contact.find_by_network(params: { hash_key: self.hash_key })
    end

    def find_contact(id)
      Contact.find_by_id(id, params: { hash_key: self.hash_key })
    end

    def modify_contact(id, params={})
      Contact.update_by_id(id, { hash_key: self.hash_key, contact: params })
    end

    def create_contact(attributes={})
      Contact.create_by_network({ hash_key: self.hash_key }.merge(contact: attributes))
    end
    
    def destroy_contact(id)
      Contact.destroy_by_id(id, { hash_key: self.hash_key })
    end
  end
end
