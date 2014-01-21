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
  def logo
   image_tag("logo.png", :alt => "Application exemple", :class => "round")
  end
end
