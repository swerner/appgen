require 'spec_helper'

describe Appgen::Application do
  before do
    @application = Appgen::Application.new(JSON.parse(File.read(File.dirname(__FILE__) + "/support/test_spec.json")))
  end

  describe ".initialize" do
    it "assigns the application name" do
      @application.name.should == "Test Application"
    end

    it "creates the correct number of custom features" do
      @application.custom_features.length.should == 2
    end
  end
end
