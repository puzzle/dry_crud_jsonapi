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

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_development_dependency "bundler", "~> 1.17"
  spec.add_development_dependency "rake", "~> 10.0"
  # spec.add_development_dependency "rspec", "~> 3.0"

  spec.add_runtime_dependency "rails", "~> 5.0"
  spec.add_runtime_dependency "jsonapi-rails", "~> 0.3.1"
end
