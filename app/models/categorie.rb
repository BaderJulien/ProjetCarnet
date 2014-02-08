class Categorie < ActiveRecord::Base
  attr_accessible :nom
  has_many :notes
end
