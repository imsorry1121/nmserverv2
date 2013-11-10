#encoding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



#dish, comment and store

Dish.delete_all
File.open("public/dishes.txt").each do |line|
	puts line
	arr = line.split("\t")
	Dish.create(
		:id => arr[0],
		:img => File.open("public/dishes/d#{arr[0]}.jpg", 'rb').read,
		:name => arr[2],
		:store_id => arr[1],
		:price => arr[3]
		)
end

Store.delete_all
File.open("public/stores.txt").each do |line|
	puts line
	arr = line.split("\t")
	Store.create(
		:img1 => File.open("public/stores/s#{arr[0]}.jpg", 'rb').read,
		:name => arr[1],
		:location => arr[2],
		:otime => arr[3],
		:ctime => arr[4],
		:intro => arr[5],
		:fb_url => arr[6]
		)
end

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

Message.delete_all
File.open("public/messages.txt").each do |line|
	puts line
	arr = line.split("\t")
	Message.create(
		:title => arr[1],
		:img => File.open("public/messages/n#{arr[0]}.jpg", 'rb').read,
		:article => arr[2],
		:author => arr[3]
		)
end  
      