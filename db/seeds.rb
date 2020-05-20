# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# create basic + 5 users
User.create(name:'Alfred', icon: Faker::Avatar.image)
5.times do
  User.create(
    name: "#{Faker::Military.air_force_rank} #{Faker::Name.first_name} #{Faker::Name.last_name}",
    icon: Faker::Avatar.image
  )
end

# create 10 groups
10.times do
  Group.create(
    name: Faker::Commerce.department(max:1, fixed_amount:true),
    icon: "https://picsum.photos/id/#{Random.rand(1..100)}/100/100",
    user_id:      1 + Random.rand(6)
  )
end

# create 50 transactions
50.times do
  rnum = rand(10)
  num_nil = rnum==0 ? nil : rnum
  Transaction.create(
    name:         Faker::Commerce.product_name,
    description:  Faker::Lorem.paragraph(sentence_count: 4),
    amount:       Faker::Commerce.price,
    user_id:      1 + Random.rand(6),
    group_id:     num_nil
  )
end