require "rest-client"
require "json"

module TotalvoiceRuby
  class Base
    @@base_uri = "https://api.totalvoice.com.br"

    def initialize token
      @access_token = token
    end

    def send_post_request url, params
      RestClient.post url, params
    end
  end
end
