=begin
data set looks like:
pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}
=end

def nyc_pigeon_organizer(data)
  
  # The crux of this lab is manipulating nested hashes to invert the key/values of the hash. This can be broken down into two steps:
  # 1) Create a new hash with the names of all the pigeons as keys
  # 2) Scrape the old hash for the pigeons names, adding traits/properties to their name in the new hash.
  
  new_hash = {}
  
  data.values[1].values.each do |names|
      names.each do |name|
        new_hash[name] = {
          color: [],
          gender: [],
          lives: []
        }
      end
  end
  
  # At this point, we have a hash of pigeon names as keys with property type values, but no nested traits within those properties. We need to loop through the pigeon_data, looking for the pigeon's name (new_hash.key[x]), wherever it is assigned to trait/property. 
  
  new_hash.keys.each do |names| #Theo, Peter Jr. ...  
    data.keys.each do |properties| #:color, :gender, :lives
      data[properties].each do |traits| #:purple, :grey... :male... "Subway"...
      #puts "Our trait is #{traits[0]} and members are #{traits[1]}"
        if traits[1].include? (names)
          new_hash[names][properties].push(traits[0].to_s)
        end
      end
    end
  end
  new_hash
end