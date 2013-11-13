# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'appgen/version'

Gem::Specification.new do |spec|
  spec.name          = "appgen"
  spec.version       = Appgen::VERSION
  spec.authors       = ["Scott Werner"]
  spec.email         = ["stwerner@vt.edu"]
  spec.description   = %q{Gem to generate rails applications}
  spec.summary       = %q{Gem that generates rails applications}
  spec.homepage      = ""
  spec.license       = "Commercial"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "json"
  spec.add_runtime_dependency "json"
end
