module JsonapiSpec
  module Matchers
    class HaveJsonapiError
      include JsonapiSpec::Helpers

      def matches?(json)
        document = parse_jsonapi(json)
        document.key?('errors')
      rescue JSONAPI::Parser::InvalidDocument => ex
        @validate_error_message = ex.message
        false
      end

      def failure_message
        "Not a valid jsonapi error #{@validate_error_message}"
      end

      def failure_message_when_negated
        "Valid jsonapi error"
      end
    end
  end
end
