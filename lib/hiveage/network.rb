require 'active_resource'

module Hiveage
  class Network < Hiveage::Base
    self.site = "https://sameera.hiveage.com/api"
    self.element_name = "network"
    self.user = "jRqxnS4BxX5dYZ-Pnms5"
    self.password  = ''
    self.format = :json

    def to_param
      hash_key 
    end
  end
end
