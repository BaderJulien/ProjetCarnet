class Note < ActiveRecord::Base
  attr_accessible :Categorie, :Commentaire, :Date, :Difficulte, :Duree, :Texte, :Titre
  belongs_to :user
  
end
