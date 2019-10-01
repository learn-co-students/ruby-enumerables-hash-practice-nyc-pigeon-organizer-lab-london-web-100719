def nyc_pigeon_organizer(data)
  p_hash = {}

 data[:color].each do |color, col_array|
   col_array.each do |name|
     if !p_hash[name]
         p_hash[name] = {}
     end
     if !p_hash[name][:color]
         p_hash[name][:color] = []
     end
       p_hash[name][:color] << color.to_s
   end
 end

 data[:gender].each do |gender, gen_array|
   gen_array.each do |name|
     if !p_hash[name]
         p_hash[name] = {}
     end
     if !p_hash[name][:gender]
        p_hash[name][:gender] = []
     end
       p_hash[name][:gender] << gender.to_s
   end
 end

  data[:lives].each do |loc, loc_array|
   loc_array.each do |name|
     if !p_hash[name]
         p_hash[name] = {}
     end
     if !p_hash[name][:lives]
         p_hash[name][:lives] = []
     end
       p_hash[name][:lives] << loc.to_s
   end
 end
   p_hash
end
