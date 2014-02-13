# -*- encoding : utf-8 -*-
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

categories = Categories.create([{ name: 'Analyse' }, { name: 'Conception' }, { name: 'Developpement' }, { name: 'Test' }, { name: 'Resultat' }])
     t.date :Date
      t.integer :Categorie
      t.integer :Duree
      t.integer :Difficulte
      t.string :Titre
      t.text :Texte
      t.text :Commentaire
notes = Notes.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
