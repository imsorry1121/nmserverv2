class Dish < ActiveRecord::Base
  attr_accessible :store_id, :img, :name, :price, :including, :intro
  belongs_to :store
end
