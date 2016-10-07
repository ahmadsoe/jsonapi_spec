module JsonapiSpec
  module Matchers
    class HaveJsonapiRelationship
      include JsonapiSpec::Helpers

      def initialize(relationship)
        @relationship = relationship
      end

      def matches?(json)
        document = parse_jsonapi(json)
        document['data']['relationships'].key?(@relationship)
      rescue JSONAPI::Parser::InvalidDocument
        false
      end

      def failure_message
        "Not have a relationship #{@relationship}"
      end

      def failure_message_when_negated
        "have jsonapi relationship #{@relationship}"
      end
    end
  end
end
