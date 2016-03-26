Gem::Specification.new do |s|
  s.name         = 'current_temp'
  s.version      = '1.0.1'
  s.date         = '2016-04-23'
  s.summary      = "Returns the current temperature in °F for the provided location."
  s.description  = <<-DESC  Pass a valid US ZIP code, or a city and state and the current temperate in degrees
                            fahrenheit is returned. This requies a valid United States ZIP code as a Fixnum such as
                            94110 or a city in a String like "San Francisco, Ca".'
                   DESC
  s.authors      = ["Chris Bunting"]
  s.email        = 'christophersbunting@gmail.com'
  s.files        = ["lib/current_temp.rb"]
  s.homepage     = 'http://rubygems.org/gems/current_temp'
  s.licenses     = ['MIT']
end
