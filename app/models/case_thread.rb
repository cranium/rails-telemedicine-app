class CaseThread < ActiveRecord::Base
  belongs_to :user
  has_many :consults
  has_many :posts
  has_many :consultants, through: :consults, source: :user

  accepts_nested_attributes_for :posts
end