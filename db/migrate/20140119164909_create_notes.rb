# -*- encoding : utf-8 -*-
class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.date :Date
      t.integer :Categorie
      t.integer :Duree
      t.integer :Difficulte
      t.string :Titre
      t.text :Texte
      t.text :Commentaire

      t.timestamps
    end
  end
end
