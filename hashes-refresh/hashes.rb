# animals = {
#   dog:"Canine",
#   cat:"Feline",
#   cow:"Bovine"
# }
# # puts animals.class
# # puts animals.keys
# # puts animals[:cat]
# # puts animals
#
# ideal_zoo = {
#   animals: {
#     canines:12,
#     felines:12,
#     bovines:6,
#     insects:350
#   }
# }
#
# puts ideal_zoo[:animals][:bovines]

users = {
  dave: {
    age: 24,
    sex: "male",
  },
  jessica: {
    age: 31,
    sex: "female"
  },
  geoff: {
    age: 29,
    sex: "?"
  }
}

users.each_key do |key|
  puts key
end
users.each_value do |value|
  puts value
end
users.each do |key,value|
  value.each do |k,v|
    puts "#{key} : #{k} : #{v}"
  end
end
