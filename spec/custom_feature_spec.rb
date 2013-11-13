require 'spec_helper'

describe Appgen::CustomFeature do
  describe ".initialize" do
    let(:fields) { { "first_field" => "string", "second_field" => "integer" } }
    let(:feature) { { "feature_name" => "some_name", "fields" => fields } }

    context "everything valid" do
      before do
        @custom_feature = Appgen::CustomFeature.new(feature)
      end

      it "assigns the name of the custom feature" do
        @custom_feature.name.should == "some_name"
      end

      it "sets the fields" do
        @custom_feature.fields["first_field"].should == "string"
        @custom_feature.fields["second_field"].should == "integer"
      end
    end

    context "unsupported field" do
      let(:fields) { { "first_field" => "strang" } }

      it "raises an error if the type is not supported" do
        lambda{ Appgen::CustomFeature.new(feature) }.should raise_error
      end
    end
  end
end
