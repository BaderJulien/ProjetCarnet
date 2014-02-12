class Category < ActiveRecord::Base
  attr_accessible :nom
  has_many :notes
  belongs_to :user
end
