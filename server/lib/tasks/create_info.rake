task create_info: :environment do 
  states = (1..50).step(1).to_a

  states.each do |state|  
    Attraction.create!({
      name: Faker::Company.name,
      city: Faker::Address.city,
      tag: Faker::Company.bs,
      cost: Faker::Commerce.price,
      rating: rand(1..5),
      address: Faker::Address.street_address,
      phone_number: Faker::PhoneNumber.phone_number,
      state_id: state,
      })
    Restaurant.create!({
      name: Faker::Company.name,
      city: Faker::Address.city,
      tag: Faker::Company.bs,
      cost: Faker::Commerce.price,
      rating: rand(1..5),
      address: Faker::Address.street_address,
      phone_number: Faker::PhoneNumber.phone_number,
      state_id: state,
      })
    Hotel.create!({
      name: Faker::Company.name,
      city: Faker::Address.city,
      tag: Faker::Company.bs,
      cost: Faker::Commerce.price,
      rating: rand(1..5),
      address: Faker::Address.street_address,
      phone_number: Faker::PhoneNumber.phone_number,
      state_id: state,
      })
  end
end