module Appgen
  class CustomFeature

    SUPPORTED_TYPES = ["integer", "string", "datetime", "text", "boolean"]
    TODO_TYPES = [
      'binary',
      'date',
      'decimal',
      'float',
      'primary_key',
      'references',
      'time',
      'timestamp'
    ]
    attr_reader :name, :fields

    def initialize(feature)
      @name = feature["feature_name"]
      @fields = feature["fields"]

      validate_field_types
    end

    private
    def validate_field_types
      @fields.each do |field, type|
        unless SUPPORTED_TYPES.include?(type)
          if ACTIVERECORD_TYPES.include?(type)
            raise "Field type: #{type} not implemented yet."
          else
            raise "Field type: #{type} is not supported for field: '#{field}'."
          end
        end
      end
    end
  end
end
