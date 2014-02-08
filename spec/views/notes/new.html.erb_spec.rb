# -*- encoding : utf-8 -*-
require 'spec_helper'

describe "notes/new.html.erb" do
  before(:each) do
    assign(:note, stub_model(Note,
      :Categorie => "",
      :Duree => "",
      :Difficulte => "",
      :Titre => "MyString",
      :Texte => "MyText",
      :Commentaire => "MyText"
    ).as_new_record)
  end

  it "renders new note form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => notes_path, :method => "post" do
      assert_select "input#note_Categorie", :name => "note[Categorie]"
      assert_select "input#note_Duree", :name => "note[Duree]"
      assert_select "input#note_Difficulte", :name => "note[Difficulte]"
      assert_select "input#note_Titre", :name => "note[Titre]"
      assert_select "textarea#note_Texte", :name => "note[Texte]"
      assert_select "textarea#note_Commentaire", :name => "note[Commentaire]"
    end
  end
end
