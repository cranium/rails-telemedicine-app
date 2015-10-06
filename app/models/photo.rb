class Photo < ActiveRecord::Base
  belongs_to :post
  has_many :cases, :through => :posts
end
