require 'spec_helper'

describe "phases/new.html.erb" do
  before(:each) do
    assign(:phase, stub_model(Phase,
      :nom => "MyString"
    ).as_new_record)
  end

  it "renders new phase form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => phases_path, :method => "post" do
      assert_select "input#phase_nom", :name => "phase[nom]"
    end
  end
end
