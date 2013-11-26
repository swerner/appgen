module Appgen
  class Application
    attr_reader :name, :custom_features

    def initialize(spec)
      @name = spec["application_name"]
      @custom_features = setup_custom_features(spec["custom_features"])
    end

    private
    def setup_custom_features(features)
      features.map { |feature| CustomFeature.new(feature)}
    end
  end
end
