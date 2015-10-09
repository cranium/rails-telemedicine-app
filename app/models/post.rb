class Post < ActiveRecord::Base
  belongs_to :case_thread
  belongs_to :user
  has_many :photos
end
