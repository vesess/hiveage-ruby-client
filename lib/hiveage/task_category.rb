module Hiveage
  class TaskCategory < Hiveage::Base
    alias :update_attributes :modify
    
    self.prefix = "/categories/"
    self.collection_name = "tasks"
  end
end
