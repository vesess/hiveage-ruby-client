module Hiveage
  class ExpenseEntry < Hiveage::Base
    alias :update_attributes :modify
    
    self.collection_name = "expense"
  end
end
