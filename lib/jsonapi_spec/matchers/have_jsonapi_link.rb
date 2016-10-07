module JsonapiSpec
  module Matchers
    class HaveJsonapiLink
      include JsonapiSpec::Helpers

      def initialize(link)
        @link = link
      end

      def matches?(json)
        document = parse_jsonapi(json)
        document['links'].key?(@link)
      rescue JSON::API::InvalidDocument
        false
      end

      def failure_message
        "Not have a links #{@link}"
      end

      def failure_message_when_negated
        "have jsonapi link #{@link}"
      end
    end
  end
end
