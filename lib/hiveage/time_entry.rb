module Hiveage
  class TimeEntry < Hiveage::Base
    alias :update_attributes :modify
    
    self.collection_name = "time"

    def start
      post(:start)
    end

    def stop
      post(:stop)
    end
  end
end
