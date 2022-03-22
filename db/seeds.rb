# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# メインのサンプルユーザーを1人作成する
User.create!(name:  "Example User",
  email: "user@example.com",
  password:              "foobar",
  password_confirmation: "foobar",
  admin:     true,
  activated: true,
  activated_at: Time.zone.now)

# 追加のユーザーをまとめて生成する
40.times do |n|
name  = Faker::Name.name
email = "example-#{n+1}@example.com"
password = "password"
User.create!(name:  name,
    email: email,
    password:              password,
    password_confirmation: password,
    activated: true,
    activated_at: Time.zone.now)
end

User.create!(name:  "Motoyui",
  email: "motoyui@example.com",
  password:              "motoyui",
  password_confirmation: "motoyui",
  activated: true,
  activated_at: Time.zone.now)

jworship = Singer.create!(name_jp: "Jworship",
  name_en: "Jworship")

Song.create!(name_jp: "花も",
name_en: "Hanamo",
singer_id: jworship.id)

Song.create!(name_jp: "主は良いお方",
name_en: "Shuwayoiokata",
singer_id: jworship.id)

Song.create!(name_jp: "傷跡",
name_en: "Kizuato",
singer_id: jworship.id)
