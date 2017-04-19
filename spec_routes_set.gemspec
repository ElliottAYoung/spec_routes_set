# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'spec_routes_set/version'

Gem::Specification.new do |spec|
  spec.name          = "spec_routes_set"
  spec.version       = SpecRoutesSet::VERSION
  spec.authors       = ["ElliottAYoung"]
  spec.email         = ["elliott.a.young@gmail.com"]

  spec.summary       = "A small tool to help add routes to a Rails app before a test suite runs, without effecting your existing routes"
  spec.description   = "A small tool to help add routes to a Rails app before a test suite runs, without effecting your existing routes"
  spec.homepage      = "https://github.com/ElliottAYoung/SpecRoutesSet"
  spec.license       = "MIT"
  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "pry"
end
