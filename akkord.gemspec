# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'akkord/version'

Gem::Specification.new do |spec|
  spec.name          = "akkord"
  spec.version       = Akkord::VERSION
  spec.authors       = ["meganemura"]
  spec.email         = ["mura2megane@gmail.com"]

  spec.summary       = "Implementation of twelve-tone equal temperament"
  spec.description   = spec.summary
  spec.homepage      = "https://github.com/meganemura/akkord"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
