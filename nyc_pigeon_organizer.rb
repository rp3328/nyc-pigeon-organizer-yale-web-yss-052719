def nyc_pigeon_organizer(data)
  # write your code here!
  hash = {}

  data.each do |key, val|
    val.each do |info, arr|
      arr.each do |name|
        if hash.include?(name)
          if hash[name].include?(key)
            hash[name][key] << info.to_s
          else
            hash[name][key] = [info.to_s]
          end
        else
          hash[name] = {key => [info.to_s]}
        end
      end
    end
  end

end
