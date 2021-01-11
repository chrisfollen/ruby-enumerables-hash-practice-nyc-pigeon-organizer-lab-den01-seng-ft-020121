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
  hash_out
      
end

