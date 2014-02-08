require "spec_helper"

describe PhasesController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/phases" }.should route_to(:controller => "phases", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/phases/new" }.should route_to(:controller => "phases", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/phases/1" }.should route_to(:controller => "phases", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/phases/1/edit" }.should route_to(:controller => "phases", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/phases" }.should route_to(:controller => "phases", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/phases/1" }.should route_to(:controller => "phases", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/phases/1" }.should route_to(:controller => "phases", :action => "destroy", :id => "1")
    end

  end
end
