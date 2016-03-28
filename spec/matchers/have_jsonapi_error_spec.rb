require 'spec_helper'

describe JsonapiSpec::Matchers::HaveJsonapiError do
  it 'have jsonapi error' do
    content = {
      "errors": [
        {
          "status": "422",
          "source": { "pointer": "/data/attributes/first-name" },
          "title":  "Invalid Attribute",
          "detail": "First name must contain at least three characters."
        }
      ]
    }

    expect(content.to_json).to have_jsonapi_error
  end
end
