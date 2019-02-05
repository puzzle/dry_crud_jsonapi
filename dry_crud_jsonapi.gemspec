$:.push File.expand_path("../lib", __FILE__)
require "dry_crud_jsonapi/version"

Gem::Specification.new do |spec|
  spec.name          = "dry_crud_jsonapi"
  spec.version       = DryCrudJsonapi::VERSION
  spec.authors       = ["Daniel Illi"]
  spec.email         = ["illi@puzzle.ch"]

  spec.homepage      = "https://rubygems.org/gems/dry_crud_jsonapi"
  spec.summary       = "Automatic JSON:API for dry_crud applications"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.require_paths = ["lib"]
  spec.test_files = Dir["spec/**/*"]

  spec.add_development_dependency "bundler", "~> 1.17"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec-rails", "~> 3.0"
  spec.add_development_dependency "sqlite3", "~> 1.3.0"
  spec.add_development_dependency "dry_crud", "~> 5.2.0"


  spec.add_runtime_dependency "rails", "~> 5.0"
  spec.add_runtime_dependency "jsonapi-rails", "~> 0.3.1"
end
