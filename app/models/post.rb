class Post < ActiveRecord::Base
  belongs_to :case
  belongs_to :user
  has_many :photos
end
