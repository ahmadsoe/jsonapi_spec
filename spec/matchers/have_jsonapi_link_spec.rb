require 'spec_helper'

describe JsonapiSpec::Matchers::HaveJsonapiLink do
  it 'have jsonapi link' do
    content = {
      "data": [
        {
          "type": "articles",
          "id": "1",
          "attributes": {
            "title": "JSON API paints my bikeshed!"
          }
        }
      ],
      "links": {
        "self": "http://example.com/articles/"
      }
    }

    expect(content.to_json).to have_jsonapi_link(:self)
  end
end
