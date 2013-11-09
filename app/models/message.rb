class Message < ActiveRecord::Base
  attr_accessible :article, :author, :img, :title
end
