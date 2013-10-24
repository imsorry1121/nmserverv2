class Blogger < ActiveRecord::Base
  attr_accessible :title, :img, :intro, :name
end
