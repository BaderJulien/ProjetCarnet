require 'spec_helper'

describe "categories/edit.html.erb" do
  before(:each) do
    @categorie = assign(:categorie, stub_model(Categorie,
      :nom => "MyString"
    ))
  end

  it "renders the edit categorie form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => categories_path(@categorie), :method => "post" do
      assert_select "input#categorie_nom", :name => "categorie[nom]"
    end
  end
end
