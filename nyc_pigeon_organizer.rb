def nyc_pigeon_organizer(data)
  # write your code here!
  # pigeon_data = {
  #   :color => {
  #     :purple => ["Theo", "Peter Jr.", "Lucky"],
  #     :grey => ["Theo", "Peter Jr.", "Ms. K"],
  #     :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
  #     :brown => ["Queenie", "Alex"]
  #   },
  #   :gender => {
  #     :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
  #     :female => ["Queenie", "Ms. K"]
  #   },
  #   :lives => {
  #     "Subway" => ["Theo", "Queenie"],
  #     "Central Park" => ["Alex", "Ms. K", "Lucky"],
  #     "Library" => ["Peter Jr."],
  #     "City Hall" => ["Andrew"]
  #   }
  # }
  new_hash = {}
  data.each do |stats, details| #iterates over the pigeon data and stats
    details.each do |det, names| #iterates over the details and the name array
      names.each do |name| # iterates over the name array. 

        new_hash[name] ||= {}  #build the hash starting from the names
        new_hash[name][stats] ||= []  #add the stats 
        new_hash[name][stats] << det.to_s #showell the details.
      end
    end
  end
  new_hash







end