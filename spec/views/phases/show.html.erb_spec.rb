require 'spec_helper'

describe "phases/show.html.erb" do
  before(:each) do
    @phase = assign(:phase, stub_model(Phase,
      :nom => "Nom"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nom/)
  end
end
