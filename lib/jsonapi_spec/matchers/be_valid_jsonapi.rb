module JsonapiSpec
  module Matchers
    class BeValidJsonapi
      include JsonapiSpec::Helpers

      def matches?(json)
        parse_jsonapi(json)
        true
      rescue JSONAPI::Parser::InvalidDocument => ex
        @validate_error_message = ex.message
        false
      end

      def failure_message
        "Not a valid jsonapi #{@validate_error_message}"
      end

      def failure_message_when_negated
        "Valid jsonapi"
      end
    end
  end
end
