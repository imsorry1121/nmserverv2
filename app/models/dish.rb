class Dish < ActiveRecord::Base
  attr_accessible :s_id, :img, :name, :price, :store, :including, :intro
end
