require 'pry'

def nyc_pigeon_organizer(data)
  # write your code here!
  hash_out = {}
  data.each do |key, value|
    value.each do |inside_key, names|
      names.each do |current_name|
        if !hash_out[current_name]
          hash_out[current_name] = {}
        end
        if !hash_out[current_name][key]
          hash_out[current_name][key] =[]
        end
        hash_out[current_name][key].push(inside_key.to_s)
        
      end
    end
  end
  #binding.pry
  puts hash_out
      
end

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

nyc_pigeon_organizer(pigeon_data)

