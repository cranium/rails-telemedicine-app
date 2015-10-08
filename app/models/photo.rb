class Photo < ActiveRecord::Base
  belongs_to :post
  has_one :cases, :through => :posts
end