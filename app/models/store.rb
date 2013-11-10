class Store < ActiveRecord::Base
  attr_accessible :ctime, :img1, :img2, :img3, :location, :name, :otime, :phone, :fb_url, :intro
  has_many :dishes 
end
