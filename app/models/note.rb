# -*- encoding : utf-8 -*-
class Note < ActiveRecord::Base
  attr_accessible :Categorie, :Commentaire, :Date, :Difficulte, :Duree, :Texte, :Titre
  belongs_to :user
  belongs_to :categorie
  validates_presence_of :Categorie, :Date, :Difficulte, :Duree, :Texte, :Titre
  validates :Difficulte, :Duree, numericality: {only_integer:true, greater_than:-1}
  validates :Difficulte, numericality: {less_than_or_equal_to:10 }
  protected
end
