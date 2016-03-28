require 'spec_helper'

describe JsonapiSpec::Matchers::BeValidJsonapi do
  it 'valid jsonapi' do
    content = {
      "data": [
        {
          "type": "articles",
          "id": "1",
          "attributes": {
            "title": "JSON API paints my bikeshed!"
          }
        }
      ]
    }

    expect(content.to_json).to be_valid_jsonapi
  end

  it 'invalid jsonapi' do
    content = {
      "data": [
        {
          "id": "1",
          "attributes": {
            "title": "JSON API paints my bikeshed!"
          }
        }
      ]
    }

    expect(content.to_json).not_to be_valid_jsonapi
  end
end
