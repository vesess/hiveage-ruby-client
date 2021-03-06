require "hiveage/base"

module Hiveage
  module Config
    attr_accessor :api_key, :subdomain, :site

    def configure
      yield self

      Base.site      = "http://#{self.subdomain}.hiveage.local:3000/api"
      Base.user      = self.api_key
      Base.password  = ''
      Base.format    = :json

      self
    end

  end
end
