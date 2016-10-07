require 'json'
require 'jsonapi/parser'

module JsonapiSpec
  module Helpers
    extend self

    def parse_jsonapi(json)
      json = JSON.parse(json) if json.is_a?(String)
      JSONAPI.parse_response!(json)
      json
    end
  end
end
