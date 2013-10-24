# encoding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


#path = "app/assets/images/lu.jpg"
#imgread = ""
#File.open(path,'rb'){|file| tempread = file.read}
#Dish.create(:name=>'芋頭餅',:store=>'劉芋仔蛋黃芋餅',:price=>'15',:img=>tempread)


#blogger

# bimgpath = "app/assets/images/bloggers/"
# dimgpath = "app/assets/images/dishs/"
# simgpath = "app/assets/images/stores/"
# File.open(bimgpath+"1.jpeg", "rb") { |file| Blogger.create(:title=> "寧夏小霸王",:name=>"張宇婷", :img=>file.read, :intro=>"在地23年，嘗遍台灣美食，最愛寧夏，寧夏就是我的地盤。")  }
# File.open(bimgpath+"2.jpeg", "rb") { |file| Blogger.create(:title=>"台灣美食王", :name=>"陳世穎", :img=>file.read, :intro=>"寧夏是我第二個家。")  }
# File.open(bimgpath+"3.jpg", "rb") { |file| Blogger.create(:title=>"印度美食王", :name=>"楊筑雅", :img=>file.read, :intro=>"我最愛吃。")  }
Blogger.delete_all
File.open("public/bloggers/list.txt").each do |line|
	puts line
	arr = line.split("\t")
	Blogger.create(:img => open("public/bloggers/#{arr[0]}").read, :name => arr[1], :title => arr[2], :intro => arr[3])
end
#comment

#store


#dish

