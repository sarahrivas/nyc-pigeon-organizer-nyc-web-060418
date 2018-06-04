def nyc_pigeon_organizer(data)
  birds = {}
  data.each do |category, types|
    types.each do |type_key, names|
      names.each do |name|
        birds[name] = {category}
      end  
    end
  end
  birds
end