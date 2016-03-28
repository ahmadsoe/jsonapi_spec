module JsonapiSpec
  module Matchers
    class HaveJsonapiAttribute
      include JsonapiSpec::Helpers

      def initialize(attribute)
        @attribute = attribute
      end

      def matches?(json)
        document = parse_jsonapi(json)
        document.data.attributes.defined?(@attribute)
      rescue JSON::API::InvalidDocument
        false
      end

      def failure_message
        "Not have a attribute #{@attribute}"
      end

      def failure_message_when_negated
        "have jsonapi attribute #{@attribute}"
      end
    end
  end
end
