require 'json/api'

module JsonapiSpec
  module Helpers
    extend self

    def parse_jsonapi(json)
      JSON::API.parse(json)
    end
  end
end
