require 'open-uri'
require 'json'

class CurrentTemperature
  class MissingAPIKey < StandardError; end
  class APIError < RuntimeError; end
  class InvalidLocation < ArgumentError
    def initialize(message)
      super(message)
    end
  end

  API_KEY = ENV['WUNDERGROUND_API_KEY'] || '30f83270d6b067f2'

  def self.at_location(location)
    raise MissingAPIKey if API_KEY.nil?
    location = location.to_s

    if location.match(/(^\d{5}$)|(^\d{5}-\d{4}$)/)
      location_query = location
    elsif location.match(/[a-z,A-Z]/)
      city = location.split(/,/).first.gsub(' ','_')
      state = location.split(/,/).last.strip
      location_query = "#{state}/#{city}"
    else
      raise InvalidLocation.new("You location #{location}, was invalid")
    end

    api_url = "http://api.wunderground.com/api/#{API_KEY}/geolookup/conditions/q/#{location_query}.json"

    open(api_url) do |f|
      json_string = f.read
      parsed_json = JSON.parse(json_string)
      temperature = parsed_json['current_observation']['temp_f']
      return temperature
    end
  end
end
