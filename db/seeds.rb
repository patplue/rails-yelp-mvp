require 'faker'

puts 'Creating 10 fake posts...'
10.times do
  restaurant = Restaurant.new(
    name: Faker::Restaurant.name,
    address: Faker::Address.full_address,
    phone_number: Faker::PhoneNumber.phone_number_with_country_code,
    category: %w[chinese italian japanese french belgian].sample
  )
  restaurant.save!
end
