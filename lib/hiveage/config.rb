module Hiveage
  class Config
    @@api_key = "your_api_key"
    @@subdomain = "subdomain"
    @@use_https = true 

    class << self
      def api_key=(api_key)
        @@api_key = api_key
      end

      def api_key
        @@api_key
      end

      def subdomain=(subdomain)
        @@subdomain = subdomain
      end

      def subdomain
        @@subdomain
      end
    end
  end
end
