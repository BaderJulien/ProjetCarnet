# -*- encoding : utf-8 -*-
require 'spec_helper'

describe "notes/show.html.erb" do
  before(:each) do
    @note = assign(:note, stub_model(Note,
      :Categorie => "",
      :Duree => "",
      :Difficulte => "",
      :Titre => "Titre",
      :Texte => "MyText",
      :Commentaire => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Titre/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
  end
end
