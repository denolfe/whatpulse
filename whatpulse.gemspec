# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'whatpulse/version'

Gem::Specification.new do |spec|
  spec.name          = "whatpulse"
  spec.version       = Whatpulse::VERSION
  spec.authors       = ["Elliot DeNolf"]
  spec.email         = ["denolfe@gmail.com"]
  spec.summary       = %q{Whatpulse API Wrapper}
  spec.description   = %q{Wrapper for the Whatpulse API. Allows retrieval of key and click counts}
  spec.homepage      = "https://github.com/denolfe/whatpulse"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.required_ruby_version = ">= 1.9.3"
  spec.add_runtime_dependency "httparty", "~> 0.12.0"
  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
