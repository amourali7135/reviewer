require 'json'

file = File.read('categories.json')

data_hash = JSON.parse(file)

data_array = data_hash.to_a

# puts data_array[0]

category_array = []

data_array.each do |category|
     category_array << category["title"]
end

better_array = []

puts category_array.split(', ')


# better_array << category_array

# puts better_array
