require 'jsonapi_spec/matchers/be_valid_jsonapi'
require 'jsonapi_spec/matchers/have_jsonapi_link'
require 'jsonapi_spec/matchers/have_jsonapi_relationship'
require 'jsonapi_spec/matchers/have_jsonapi_attribute'
require 'jsonapi_spec/matchers/have_jsonapi_error'

module JsonapiSpec
  module Matchers
    def be_valid_jsonapi
      JsonapiSpec::Matchers::BeValidJsonapi.new
    end

    def have_jsonapi_link(link)
      JsonapiSpec::Matchers::HaveJsonapiLink.new(link)
    end

    def have_jsonapi_relationship(relationship)
      JsonapiSpec::Matchers::HaveJsonapiRelationship.new(relationship)
    end

    def have_jsonapi_attribute(attribute)
      JsonapiSpec::Matchers::HaveJsonapiAttribute.new(attribute)
    end

    def have_jsonapi_error
      JsonapiSpec::Matchers::HaveJsonapiError.new
    end
  end
end

RSpec.configure do |config|
  config.include JsonapiSpec::Matchers
end
