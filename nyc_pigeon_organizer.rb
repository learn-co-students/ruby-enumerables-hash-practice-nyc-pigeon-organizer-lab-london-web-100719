def nyc_pigeon_organizer(data)
  pigeon_list = {}
  # Do all colours.
  data[:color].each do |color, pigeon_names|
    pigeon_names.each do |name|
      if !pigeon_list[name]
        pigeon_list[name] = {}
      end
      if !pigeon_list[name][:color]
        pigeon_list[name][:color] = []
      end
      pigeon_list[name][:color].push(color.to_s)
    end 
  end
  
  # Do all genders.
  data[:gender].each do |gender, pigeon_names|
    pigeon_names.each do |name|
      if !pigeon_list[name]
        pigeon_list[name] = {}
      end 
      if !pigeon_list[name][:gender]
        pigeon_list[name][:gender] = []
      end 
      pigeon_list[name][:gender].push(gender.to_s)
    end 
  end
  
  # Do all lives.
   data[:lives].each do |where, pigeon_names|
    pigeon_names.each do |name|
      if !pigeon_list[name]
        pigeon_list[name] = {}
      end 
      if !pigeon_list[name][:lives]
        pigeon_list[name][:lives] = []
      end 
      pigeon_list[name][:lives].push(where.to_s)
    end 
  end
  
  return pigeon_list
end
