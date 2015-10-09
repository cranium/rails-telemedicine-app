class Photo < ActiveRecord::Base
  belongs_to :post
  has_one :thread, :through => :posts
end