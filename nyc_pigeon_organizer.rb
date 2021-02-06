def nyc_pigeon_organizer(data)

  rhash = {}

  data.keys.map {|key| data[key].each {|item| item[1].map{|element| rhash[element] = {color: [], gender: [], lives: []} }}}

  data.keys.each {|key| data[key].each {|item| item[1].map {|name| rhash[name][key].push(item[0].to_s)}}}

  return rhash

end

=begin

# "Proper" not hacky way

def nyc_pigeon_organizer(data)

  rhash = {}

  data.each do |key, value|

    value.each do |subkey, subvalue|

      subvalue.each do |name|

        if !rhash[name]

          rhash[name] = {}

        end

        if !rhash[name][key]

          rhash[name][key] = []

        end

        rhash[name][key] << subkey.to_s

      end

    end

  end
=end
