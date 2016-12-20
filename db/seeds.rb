User.delete_all
Thing.delete_all

20.times do
  User.create(username: Faker::Name.name, password: 'password' )


end

10.times do
  post = Thing.new(name: Faker::Name.first_name, description: Faker::Address.street_address)
  post.user = User.all[rand(1..10)]
  post.save
end

  ##Faker::Internet.email
  ##Faker::Date.between(2.days.ago, Date.today)
  ##Faker::Name.first_name
  ##Faker::Name.last_name
  ##Faker::Name.name

  ##Faker::Hacker.say_something_smart - puts some smart type text
  ##Faker::Team.name
  ##
