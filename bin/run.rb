require 'yaml'
require 'pp'

raw_data = File.read('../data/amusement_parks.yml') # gives us the data as a string
parks = YAML.load(raw_data) # gives us the data as a hash


id_hash = {}

parks.each do |park|

  id_hash[park[:id]] = park

end

pp id_hash



country_hash = {}

parks.each do |park|

  key = park[:country]

  country_hash[key] ||= []
  country_hash[key] << park

end

pp country_hash




country_hash = {}

b = 0

parks.each do |park|

  b += 1
  break if b > 4

  key = "#{park[:state]}, #{park[:country]}"

  country_hash[key] ||= []
  country_hash[key] << park

end

pp country_hash
