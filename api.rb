require 'json'
require 'cgi'
module API
  class Client
    def initialize(base_uri)
      @token = ENV['SLACK_API_TOKEN']
      @base_uri = base_uri
    end
    def request(method, opt = {})
      uri = "#{@base_uri}#{method}"
      opt['token'] = @token
      param = opt.map do |k, v|
        k = CGI::escape k.to_s
        v = CGI::escape v.to_s
        "#{k}=#{v}"
      end.join('&')
      response_json = `curl --silent -X POST -d '#{param}' #{uri}`
      begin
        JSON::parse response_json
      rescue JSON::ParserError=> e
        {}
      end
    end
  end
end
