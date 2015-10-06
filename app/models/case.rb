class Case < ActiveRecord::Base
  belongs_to :user
  has_many :consults
  has_many :posts
end
