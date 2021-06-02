require 'json'

file = File.read('categories.json')

data_hash = JSON.parse(file)

data_array = data_hash.to_a

puts data_array[1]

data_hash.each do |category|
    puts category["title"]
end

# puts data_hash[0]['title']

# puts data_hash.each do |key, value|
#     puts "#{key}.to_a"
# end