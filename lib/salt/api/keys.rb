module Salt
  module Api
    module Keys
      def keys(minion_id = nil)
        req = Net::HTTP::Get.new(minion_id.nil? ? "/keys" : "/keys/#{minion_id}")
        req['X-Auth-Token'] = token
        req['Accept'] = "application/x-yaml"
        resp = client.request(req)
        raise "Get request to /keys failed (#{resp})" unless resp.kind_of? Net::HTTPSuccess
        parsed_resp = YAML.load(resp.body)["return"]
        return parsed_resp
      end
    end
  end
end
