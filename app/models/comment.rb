class Comment < ActiveRecord::Base
  attr_accessible :blogger_id, :dish_id, :content
  belongs_to :blogger
  belongs_to :dish
end
