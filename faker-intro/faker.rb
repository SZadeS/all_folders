require "faker"

puts Faker::Address.city
puts Faker::Address.country
puts Faker::Address.country_code

puts "today, I found out that Rizwan's bank number is #{Faker::Bank.routing_number}. He should get with the times and keep his money in the form of Crypto, as such #{Faker::Crypto.md5}- this is five pounds. Then off I went with his money to buy #{Faker::Food.dish}, which is basically #{Faker::Food.description} "
puts Faker::SouthPark.quote
