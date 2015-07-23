# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cbr_currency/version'

Gem::Specification.new do |spec|
  spec.name          = "cbr_currency"
  spec.version       = CbrCurrency::VERSION
  spec.authors       = ["Yana Petrova"]
  spec.email         = ["y.petrova@rambler-co.ru"]

  spec.summary       = "Fetches currency from CBR"
  spec.description   = "Fetches currency from CBR"
  spec.homepage      = "http://example.com"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"

  spec.add_dependency "nokogiri"
  spec.add_dependency "logging"
end
