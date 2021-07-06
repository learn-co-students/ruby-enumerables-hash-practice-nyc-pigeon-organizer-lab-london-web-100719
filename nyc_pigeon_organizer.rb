def nyc_pigeon_organizer(data)
  organised_pigeons = Hash.new
  my_pigeons = data[:gender][:male] + data[:gender][:female]
  
  my_pigeons.each {|pigeon_name| organised_pigeons[pigeon_name] = Hash.new}
  
  data.each_key { |first_layer_key|
    data[first_layer_key].each_key { 
      |second_layer_key|
      my_pigeons.map {
      |pigeon_name| 
        if data[first_layer_key][second_layer_key].include?(pigeon_name) then
          if organised_pigeons[pigeon_name][first_layer_key] == nil then
            organised_pigeons[pigeon_name][first_layer_key] = []
            organised_pigeons[pigeon_name][first_layer_key].push("#{second_layer_key}")
          else
            organised_pigeons[pigeon_name][first_layer_key].push("#{second_layer_key}")
          end
        end
      }
    }
  }
  # for some reason this doesnt work. figure it out.
  return organised_pigeons
end
