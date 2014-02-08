require 'spec_helper'

describe "categories/new.html.erb" do
  before(:each) do
    assign(:categorie, stub_model(Categorie,
      :nom => "MyString"
    ).as_new_record)
  end

  it "renders new categorie form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => categories_path, :method => "post" do
      assert_select "input#categorie_nom", :name => "categorie[nom]"
    end
  end
end
