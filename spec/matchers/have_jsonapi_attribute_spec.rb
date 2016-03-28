require 'spec_helper'

describe JsonapiSpec::Matchers::HaveJsonapiAttribute do
  it 'have jsonapi attribute' do
    content = {
      "data": {
        "type": "articles",
        "id": "1",
        "attributes": {
          "title": "JSON API paints my bikeshed!"
        },
        "relationships": {
          "author": {
            "data": { "type": "people", "id": "1"}
          }
        }
      }
    }

    expect(content.to_json).to have_jsonapi_attribute(:title)
  end
end
