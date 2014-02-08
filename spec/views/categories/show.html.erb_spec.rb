require 'spec_helper'

describe "categories/show.html.erb" do
  before(:each) do
    @categorie = assign(:categorie, stub_model(Categorie,
      :nom => "Nom"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nom/)
  end
end
