#encoding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



#dish, comment and store
Store.delete_all
Dish.delete_all
Comment.delete_all
arr = ["good", "great", "novel", "awesome"]
dishesArray = ["", "",""]
stringArray = ["","","","","","",""]
File.open("public/dishes2.txt").each do |line|
	puts line
	dishesArray = line.split("\t")
	Dish.create(
		:img => File.open("public/dishes/d#{dishesArray[0]}.jpg", 'rb').read,
		:name => dishesArray[2],
		:store_id => dishesArray[1]
		)
end

File.open("public/stores.txt").each do |line|
	puts line
	stringArray = line.split("\t")
	Store.create(
		:img1 => File.open("public/stores/s#{stringArray[0]}.jpg", 'rb').read,
		:name => stringArray[1],
		:location => stringArray[2],
		:otime => stringArray[3],
		:ctime => stringArray[4],
		:intro => stringArray[5],
		:fb_url => stringArray[6]
		)
end

seed = Random.new(1122)

#blogger
Blogger.delete_all
File.open("public/bloggers/list.txt").each do |line|
	puts line
	arr = line.split("\t")
	Blogger.create(
		:img => File.open("public/bloggers/#{arr[0]}", 'rb').read, 
		:name => arr[1], 
		:title => arr[2], 
		:intro => arr[3]
		)
end
# counter = 1
# File.open("public/stores.txt").each do |line|
# 	Store.create(
# 		:name => "#{line}",
#     :location => "#{line}_addr.",
#     :otime => "18:00",
#     :ctime => "2:00",
#     :img1 => File.open("public/stores/#{counter}_1.jpg", 'rb').read,
#     :img2 => File.open("public/stores/#{counter}_2.jpg", 'rb').read,
#   )
# 	Dish.create(
# 	  :name => "#{line}",
# 	  :price => seed.rand(1..100),
# 	  :img => File.open("public/stores/#{counter}_3.jpg", 'rb').read,
# 	  :store_id => counter
# 	)
# 	counter = counter + 1
# end     
      