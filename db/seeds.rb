User.destroy_all
Post.destroy_all
Response.destroy_all

1.times do |index|
  User.create!(email: "admin@gmail.com",
                        password: "password",
                        admin: true)
end


5.times do |index|
  Post.create!(name: "Buzz Ramsey",
                        title: "Too much fish in clackamas",
                        content: "I just cant stand all these fish here")
end


10.times do |index|
  Response.create!(name: "Owen",
                        content: "No Kidding, Buzz",
                        post_id: rand(1..5) )
end
