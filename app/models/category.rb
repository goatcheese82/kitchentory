class Category < ActiveRecord::Base
  belongs_to :user
  has_many :things, through: :categories
end
