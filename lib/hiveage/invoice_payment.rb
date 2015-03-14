module Hiveage
  class InvoicePayment < Hiveage::Base
    self.prefix = "/invs/:hash_key/"
    self.collection_name = "payments"

    def self.all_payments(*args)
      all(*args)
    end

    def self.find_by_id(id, *args)
      find(id, *args)
    end

    def self.update_by_id(id, *args)
      modify(id, *args)
    end

    def self.create_by_invoice(*attributes)
      create(*attributes)
    end

    def self.destroy_by_id(id, args)
      delete(id, args)
    end
  end
end
