# -*- encoding : utf-8 -*-
class PagesController < ApplicationController
  def home
    @title="Home"
    render 'home'
  end
  def graphe
    
    #============================
    #Graphique pour la difficulte
    #============================
    
    tabdata = []
    tablabel = []
    somme = 0
    current_user.categories.each do |categorie|
      current_user.notes.each do |note|
        if(note.Categorie==categorie.id)
          somme = somme + note.Difficulte
        end
      end
      tabdata.push(somme)
      tablabel.push(categorie.nom)
     end
   @graph_diff = Gchart.pie(:title => 'Difficulté de chaque catégorie de tache',:data => tabdata, :labels => tablabel, :size => '450x250')
   
   #=======================
   #Graphique pour la durée
   #=======================
   
    nbcategorie=current_user.categories.count
    tabdata = []
    tablabel = []
    tabcolor = ['34ff34','00e700','009b00','9b004e']
    #color = 0x34ff34
    somme = 0
    current_user.categories.each do |categorie|
      current_user.notes.each do |note|
        if(note.Categorie==categorie.id)
          somme = somme + note.Duree
        end
      end
      #color=color-0x000010
      #tabcolor.push(color.to_i)
      tabdata.push(somme)
      tablabel.push(categorie.nom)
     end
   @graph_temp = Gchart.pie(:title => 'Durée de chaque catégorie de tache',:data => tabdata, :labels =>tablabel, :size =>'450x250', :bar_width_and_spacing => 40)
   
  end
end
