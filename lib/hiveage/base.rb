module Hiveage
  class Base < ActiveResource::Base
    
    class << self
      ## Hiveage don't follow active record RESTful resource routes
      def collection_name
        @collection_name ||= element_name
      end

      def method_not_allowed
        raise ActiveResource::MethodNotAllowed.new(__method__)
      end

      def modify(id, options)
        prefix_options, query_options = split_options(options)
        path = element_path(id, prefix_options)

        new(options).tap do |resource|
          resource.modify!(path)
        end
      end
    end

    def modify!(path)
      run_callbacks :update do
        connection.put(path, encode, self.class.headers).tap do |response|
          load_attributes_from_response(response)
        end
      end
    end

    def modify(attributes)
      params = {}
      params[self.class.element_name.to_sym] = attributes

      resource = Base.new(params)
      response = self.class.put(to_param, nil, resource.to_json)

      self.class.new(connection.format.decode(response.body))
    end

    def custom_method_element_url(method_name, options = {})
      "#{self.class.prefix(prefix_options)}#{self.class.collection_name}/#{to_param}/#{method_name}#{self.class.format_extension}#{self.class.__send__(:query_string, options)}"
    end

  end
end
