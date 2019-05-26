# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
3.times do
  User.create(
    email: Faker::Internet.unique.email,
    username: Faker::Internet.unique.username
  )
end

["Food", "Travel", "Music"].each do |name|
  Tag.create(name: name)
end

p1 = Picture.create(
  image_url: "https://peasandcrayons.com/wp-content/uploads/2012/10/homemade-sushi-tutorial-recipe-peas-and-crayons-1250.jpg",
  title: "Sushi night",
  user_id: User.all.sample.id
)

p1.tags = [Tag.find_by(name: "Food")]
p1.save

p2 = Picture.create(
  image_url: "https://image.cnbcfm.com/api/v1/image/105570853-1542114302592gettyimages-1059173626.jpeg",
  title: "Long Island City",
  user_id: User.all.sample.id
)

p2.tags = [Tag.find_by(name: "Travel")]
p2.save

p3 = Picture.create(
  image_url: "https://assets.simpleviewinc.com/simpleview/image/upload/c_fill,h_800,q_75,w_640/v1/clients/neworleans/NOTMC_48984_d21fdb42-a519-4524-9c61-f3e67eae5b22.jpg",
  title: "New Orleans musicians",
  user_id: User.all.sample.id
)

p3.tags = [Tag.find_by(name: "Travel"), Tag.find_by(name: "Music")]
p3.save

10.times do
  Comment.create(
    content: Faker::Marketing.buzzwords,
    picture_id: Picture.all.sample.id,
    user_id: User.all.sample.id
  )
end
