require 'faraday'
require 'json'

class Connection
  BASE = 'https://spoonacular-recipe-food-nutrition-v1.p.mashape.com'

  def self.api
    Faraday.new(url: BASE) do |faraday|
      faraday.response :logger
      faraday.adapter Faraday.default_adapter
      faraday.headers['Content-Type'] = 'application/json'
      faraday.headers['X-Mashape-Key'] = '01c0bPUejJmshHbzpmri0fAsmh75p1MsZhzjsn3rIW7wrcNsni'
      # QzWXBXGKI3mshT2FwX167rK7zQpZp18msJmjsnEJ2Twczmqc
    end
  end
end
