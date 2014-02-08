# -*- encoding : utf-8 -*-
module ApplicationHelper
  # Retourner un titre basé sur la page.
  def title
    base_title = "Carnet de bord"
    if @title.nil?
      base_title
    else
      "#{base_title} - #{@title}"
    end
  end
end
