# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


 ashley = User.create({username: "ashley", password: "1", avatar: "http://v.dreamwidth.org/788249/56500"})
 aditi = User.create({username: "aditi", password: "2", avatar: "http://cdn.marketplaceimages.windowsphone.com/v8/images/b4cebb7e-1ade-4c85-a675-eb4c76d5c3ff?imageType=ws_icon_large"})

 first = Trip.create({total: 160, hotel: 40, food: 40, activities: 40, travel: 40, num_days: 4, user_id: 1})
 second = Trip.create({total: 200, hotel: 50, food: 50, activities: 50, travel: 50, num_days: 3, user_id: 2})