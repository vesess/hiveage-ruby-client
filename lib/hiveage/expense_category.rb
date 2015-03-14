module Hiveage
  class ExpenseCategory < Hiveage::Base
    alias :update_attributes :modify
    
    self.prefix = "/categories/"
    self.collection_name = "expenses"
  end
end
