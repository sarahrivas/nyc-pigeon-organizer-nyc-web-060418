def nyc_pigeon_organizer(data)
  birds = {}
  data.each do |category, types|
    types.each do |type_key, names|
      names.each do |name|
        if birds[name] 
          if birds[name][category]
            birds[name][category] << type_key
          else
            birds[name][category] = [type_key] 
          end  
        else
          birds[name] = {}
          birds[name][category] = [type_key] 
        end
      end  
    end
  end
  birds
end