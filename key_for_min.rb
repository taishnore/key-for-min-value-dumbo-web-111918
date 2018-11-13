def key_for_min_value(name_hash)
  if name_hash == {}
    nil
  else
    min_key = name_hash.first[0] #first turns the first k:v pair into an array, with symbol and value
    min_val = name_hash.first[1]
    name_hash.each do |key, value|
      if value < min_val
        min_key = key
        min_val = value
      end
    end
    min_key
  end
end