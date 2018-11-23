for i in (1..10) do
  Person.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    dob: Faker::Date.birthday(18, 65),
    job: Faker::Job.title,
    organisation: Faker::Company.name
  )
end

for i in (1..Person.count)
  Address.create(
    street_number: Faker::Address.building_number,
    street_name: Faker::Address.street_name,
    city: Faker::Address.city,
    country: Faker::Address.country,
    zip: Faker::Address.zip,
    person: Person.find(i)
  )
end

for i in (1..20)
  num = rand(1..Person.count)
  Car.create(
    car_make: Faker::Vehicle.make,
    car_model: Faker::Vehicle.model,
    car_year: Faker::Vehicle.year,
    car_colour: Faker::Vehicle.color,
    person: Person.find(num)
  )
end

for i in (1..40)
  num = rand(1..Person.count)
  Pet.create(
    name: "#{Faker::Name.prefix} #{Faker::FunnyName.name}",
    animal: Faker::Pokemon.name,
    origin: Faker::Address.country,
    legs: Faker::Number.between(2,4),
    person: Person.find(num)
  )
end

puts "#{Person.count} people were created"
puts "#{Address.count} addresses were created"
puts "#{Car.count} cars were created"
