1.times do
  User.create(email: "test@test.com", password: "asdfasdf", name: "Test User", roles: "user")
end

1.times do
  User.create(email: "test2@test.com", password: "asdfasdf", name: "Test User2", roles: "user")
end

p "user"

1.times do
  User.create(email: "admin@test.com", password: "asdfasdf", name: "Admin User", roles: "admin" )
end
 p "admin"

4.times do |skill|
  SkillList.create(title: "ruby #{skill}", user_id: "1")
end
p "4 ruby skill"

10.times do |skill|
  SkillList.create(title: "java #{skill}", user_id: "2")
end