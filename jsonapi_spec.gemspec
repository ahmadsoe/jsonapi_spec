# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jsonapi_spec/version'

Gem::Specification.new do |spec|
  spec.name          = "jsonapi_spec"
  spec.version       = JsonapiSpec::VERSION
  spec.authors       = ["Ahmad Suhendri"]
  spec.email         = ["ahmadsoe@gmail.com"]

  spec.summary       = %q{RSpec matchers for testing JSON API content}
  spec.description   = %q{RSpec matchers for testing JSON API content}
  spec.homepage      = "https://github.com/ahmadsoe/jsonapi_spec"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "jsonapi", "~> 0.1.1.beta5"
  spec.add_dependency "rspec", "~> 3.0", ">= 3.0.0"

  spec.add_development_dependency "bundler", "~> 1.12.a"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
