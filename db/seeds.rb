User.create!(name:  "Tadhg Ó Cuirrín",
             email: "tadhger87@gmail.com",
             password:              "87morrison",
             password_confirmation: "87morrison",
             admin: true)
             

99.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password)
end
