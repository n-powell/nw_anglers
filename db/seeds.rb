User.destroy_all
Post.destroy_all
Response.destroy_all

1.times do |index|
  User.create!(email: "admin@gmail.com",
                        password: "password",
                        admin: true)
end


5.times do |index|
  Post.create!(name: Faker::Name.name,
                        title: "Too much fish in clackamas",
                        content: Faker::MostInterestingManInTheWorld.quote)
end

75.times do |index|
  Response.create!(name: Faker::Name.name,
                        content: Faker::MostInterestingManInTheWorld.quote,
                        post_id: rand(1..5) )
end
