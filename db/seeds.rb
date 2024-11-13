require 'faker'

puts "Cleaning database..."
Restaurant.destroy_all

# 2. Create the instances 🏗️
puts "Creating restaurants..."

categories = ["chinese", "italian", "japanese", "french", "belgian"]
20.times do
  Restaurant.create!(name: Faker::Food.ingredient,
                    address: Faker::Address.full_address,
                    phone_number: "00000000000",
                    category: categories.sample)
  
# 3. Display a message 🎉
puts "Finished! Created #{Restaurant.count} restaurants."

end
