require 'spec_helper'

describe "categories/new.html.erb" do
  before(:each) do
    assign(:category, stub_model(Category,
      :nom => "MyString"
    ).as_new_record)
  end

  it "renders new category form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => categories_path, :method => "post" do
      assert_select "input#category_nom", :name => "category[nom]"
    end
  end
end
