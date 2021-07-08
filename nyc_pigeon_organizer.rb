def nyc_pigeon_organizer(data)
  organized = {}

  data.each do |k1, v1| # k1 = :color, :gender, :lives
    v1.each do |k2, v2| # ["Theo"..], ["Queenie"..]
      v2.each do |name| # ["Theo", "Peter Jr."..]..
        if !organized[name]
          organized[name] = {} # empty hash
        end
        if !organized[name][k1]
          organized[name][k1] = [] # empty array
        end
        organized[name][k1] << k2.to_s # symbol conversion
      end
    end
  end

  organized
end

