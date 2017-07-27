User.destroy_all
Post.destroy_all
Response.destroy_all

1.times do |index|
  User.create!(email: "admin@gmail.com",
                        password: "password",
                        admin: true)
end

1.times do |index|
  User.create!(email: "user1@gmail.com",
                        password: "password")
end

1.times do |index|
  User.create!(email: "user2@gmail.com",
                        password: "password")
end


15.times do |index|
  Post.create!(name: Faker::Name.name,
                        title: Faker::Lorem.sentence(3, true, 4),
                        content: Faker::Lorem.paragraph(2, false, 4))
end

75.times do |index|
  Response.create!(name: Faker::Name.name,
                        content: Faker::Lorem.paragraph(2, false, 4),
                        post_id: rand(1..5) )
end

200.times do |index|
  Trip.create!(address: ["Newport, Oregon", "Hagg Lake", "Astoria, Oregon", "Sandy river Oregon", "Willamette river", "Lake Oswego", "Wilson River Oregon", "Clackamas river oregon", "Fern Ridge Lake Oregon", "Triangle Lake Oregon", "Trillium Lake Oregon", "Frog Lake Oregon", "Clear Lake Oregon", "Ollala Resivoir Oregon", "Siletz River Oregon", "Yale Lake Washington", "Columbia River Oregon", "Cannon Beach Oregon"].sample,
                        description: Faker::Lorem.paragraph(50, true, 4),
                        trip_date: Faker::Date.between(700.days.ago, Date.today),
                        user_id: rand(1..3) )
end
