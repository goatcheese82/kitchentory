class Thing < ActiveRecord::Base
  belongs_to :category
  has_many :users, through: :categories
end
