def nyc_pigeon_organizer(data)
  new_hash = {}
  name_array = []
  
  (data[:gender][:male] + data[:gender][:female]).each do |name|
    name_array.push(name)
  end
  
  name_array.collect do |name|
    new_hash[name] = {
      [:color] => [],
      [:gender] => [],
      [:lives] => []
    }
  end
  
  data.each do |key, value|
    value.each do |key2, value2|
      if (key == :color || key == :gender)
        key2 = key2.to_s #only 'lives' will correctly be added to hash without converting color and gender
      end 
      value2.each do |item|
        if (new_hash[item][key] == nil) # cover case where pigeon has more than 1 color
          puts new_hash[item][key] = [key2]
        else
          puts new_hash[item][key] += [key2]
        end
      end
    end
  end
  
  return new_hash
end
