module Hiveage
  class Base < ActiveResource::Base

    class << self
      ## Hiveage don't follow active record RESTful resource routes
      def collection_name
        @collection_name ||= element_name
      end
    end

  end
end
