require 'net/http'
require 'json'
require 'model/mp'

class MPLookup
  API_BASE = 'http://www.theyworkforyou.com/api'
  
  attr_reader :errors
  
  def initialize(api_key)
    @api_key = api_key
    @errors  = []
  end
  
  class Error < RuntimeError; end
  
  def lookup(postcode)
    uri = URI.parse("#{API_BASE}/getMP?postcode=#{URI.encode(postcode)}&key=#{@api_key}")
    response = Net::HTTP.get_response(uri)
    if response.code.to_i == 200
      data = JSON.parse(response.body)
      if data.key?("error")
        @errors << data["error"]
        return nil
      else
        return MP.new(data)
      end
    else
      raise MPLookup::Error
    end
  end
end