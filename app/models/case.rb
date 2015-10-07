class Case < ActiveRecord::Base
  belongs_to :user
  has_many :consults
  has_many :posts
  has_many :consultants, through: :consults, source: :user
end