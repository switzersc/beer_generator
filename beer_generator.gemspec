# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'beer_generator/version'

Gem::Specification.new do |spec|
  spec.name          = "beer_generator"
  spec.version       = BeerGenerator::VERSION
  spec.authors       = ["Shelby Switzer"]
  spec.email         = ["shelby@voterheads.com"]
  spec.description   = "Awesome beer generating gem"
  spec.summary       = ""
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", "2.14.1"
end
