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

def collect_unique_pidgeon_names(data)
  name_list=[]
  output=[]
  
  data.each do |attributes, options|
    options.each do |types, names|
      names.each do |name|
        name_list.push(name)
      end
    end
  end
  
  output=name_list.uniq
  output
end


def collect_attributes_of_pidgeon(data,selected_name)
  output=[]
  attributes_list=[]
  
  data.each do |attribut, options|
    options.each do |option, names|
      names.each do |name|
        if name==selected_name
          attributes_list.push(attribut)
        end
      end
    end
  end  
  output=attributes_list.uniq
  output
end

def collect_colors(data, selected_name)
  output=[]
  color_list=[]
  
  data[:color].each do |shade, names|
    names.each do |name|
      if name==selected_name
        color_list.push(shade.to_s)
      end
    end
  end
  
  output=color_list
end

def collect_gender(data, selected_name)
  output=[]
  gender=[]

  data[:gender].each do |sex, names|
    names.each do |name|
      if name==selected_name
        gender.push(sex.to_s)
      end
    end
  end
  
  output=gender
end

def collect_lives(data, selected_name)
  output=[]
  lives=[]

  data[:lives].each do |location, names|
    names.each do |name|
      if name==selected_name
        lives.push(location)
      end
    end
  end
  
  output=lives
end

def nyc_pigeon_organizer(data)
 
 output_hash={}
 names=[]
 
 names=collect_unique_pidgeon_names(data)
 
 names.each do |name|
  output_hash[name]={}
 end
 
 output_hash.each do |name, attributes|
   pidgeon_keys=collect_attributes_of_pidgeon(data,name)
   
   pidgeon_keys.each do |key, value|
    output_hash[name][key]=[]
   end
   
   colors=collect_colors(data, name)
   output_hash[name][:color]=colors
   
   gender=collect_gender(data, name)
   output_hash[name][:gender]=gender
   
   lives=collect_lives(data, name)
   output_hash[name][:lives]=lives
 end
 
 output_hash
end

