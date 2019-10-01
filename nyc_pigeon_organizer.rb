def nyc_pigeon_organizer(data)
  
   
  new_hash = {}
  
  data.each do |key,value| 
    value.each do |descriptor, names|
      names.each do |pigeon|
        
        if !new_hash[pigeon]
          new_hash[pigeon] = {} 
        end
        
        if !new_hash[pigeon][key]
          new_hash[pigeon][key] =[]
        end
        
          new_hash[pigeon][key] << descriptor.to_s
        
        
      end
    end
  end
  
  new_hash
  
end



















def nyc_pigeon_organizer1(data)
  
  new_hash = {}

data.each do |attributes|
  if data[attributes]
  data[attributes].each do |descriptor|
    data[attributes][descriptor].each do |pidgeon|
      if !new_hash[pidgeon]
      new_hash[pidgeon] = {}
      end
    end
  end
    
  end
  end
data
end
