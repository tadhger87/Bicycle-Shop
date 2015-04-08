User.create!(name:  "Tadhg Ó Cuirrín",
             email: "tadhger87@gmail.com",
             password:              "87morrison",
             password_confirmation: "87morrison",
             admin: true,
             activated: true,
             activated_at: Time.zone.now)
             

             User.create!(name: "Piotr Szul",
                          email: "psmail82@gmail.com",
                          password: "pierdykam",
                          password_confirmation: "pierdykam",
                          admin: true,
                          activated: true,
                          activated_at: Time.zone.now)

             

99.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password,
               activated: true,
              activated_at: Time.zone.now)
              
              users = User.order(:created_at).take(6)
50.times do
  content = Faker::Lorem.sentence(5)
  users.each { |user| user.microposts.create!(content: content) }
end

end
Item.create!(name: "Liv Envie",
            description: "With its lightweight and durable ALUXX aluminium frame and upright flat-bar positioning, Alight is comfortable enough for a daily commute, but also agile and sporty for longer rides. Women’s-specific geometry and sizing gives Alight a stable, confident ride quality and it’s easy to personalise with racks and fenders to fit your riding lifestyle.",
            price: 999.00,
            image_url: "LivEnvie.jpg")
          
          
            
Item.create!(name: "FastRoad SLR",
            description: "With an ultra-lightweight ALUXX SLR aluminium 
            frameset and a fitness oriented riding position, FastRoad SLR is an 
            all-new flat-bar road bike for daily fitness riding and commuting. 
            The fastrolling 700c wheels and aero-shaped frame tubing offers a smooth,
            efficient ride. The D-Fuse seatpost design helps smooth out rough roads and
            the disc brakes give you smooth, confident braking power in all kinds of weather.",
            price: 999.00,
            image_url: "FastRoadSLR.jpg")
            
            Item.create!(name: "Envie Advanced 1",
            description: "Built on years of research, development and testing by riders including the fastest female pro on the planet, Rabobank-Liv racer Marianne Vos, Envie Advanced redefines the meaning of fast. Liv’s 3F design philosophy is paired with cutting-edge aerodynamic innovations including AeroSystem Shaping technology and the SpeedControl SL brake system. The Advanced-grade composite frame is handcrafted with the OverDrive steerer tube for precise handling. It all adds up to the ultimate aero machine for road racing and triathlons.",
            price: 2099.00,
            image_url: "EnvieAdvanced.jpg")
            
            Item.create!(name: "Alight 2 ladies bicycle",
            description: "With its lightweight and durable ALUXX aluminium frame and upright flat-bar positioning, Alight is comfortable enough for a daily commute, but also agile and sporty for longer rides. Women’s-specific geometry and sizing gives Alight a stable, confident ride quality and it’s easy to personalise with racks and fenders to fit your riding lifestyle.",
            price: 499.00,
            image_url: "Alight2.jpg")
            
            
            
            
            Item.create!(name: "Avail",
            description: "Thrive blends the speed and agility of a road bike with a more comfortable, flat-bar upright riding position. The all-new women’s-specific frame features Liv’s 3F design and lightweight ALUXX aluminium for a quick, agile feel. The D-Fuse seatpost reduces road vibrations and all-new disc-brake technology offers powerful braking, even in wet weather, so you can ride with supreme confidence.",
            price: 849.00,
            image_url: "Avail.jpg")


