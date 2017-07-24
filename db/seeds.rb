1.times do |index|
  User.create!(email: "admin@gmail.com",
                        password: "password",
                        admin: true)
end
