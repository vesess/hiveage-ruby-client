module Hiveage
  module TestData
    def create_response(body, code=200)
      body = JSON.generate(body) if !(body.kind_of? String)

      @mock = mock
      @mock.instance_variable_set('@hiveage_values', {
        body: body,
        code: code,
        headers: {}
      })

      def @mock.body; @hiveage_values[:body]; end
      def @mock.code; @hiveage_values[:code]; end
      def @mock.headers; @hiveage_values[:headers]; end

      @mock
    end

    def create_network(params={})
      {
        network: {
          name: "Connection Name",
          email: "connection_email@hiveage.com"
        }.merge(params)
      }
    end
  end
end
