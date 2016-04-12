# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'voucherify/version'

Gem::Specification.new do |spec|
  spec.name          = "voucherify"
  spec.version       = Voucherify::VERSION
  spec.authors       = ["pawelrychlik"]
  spec.email         = ["pawel.rychlik@rspective.pl"]

  spec.summary       = %q{Ruby SDK for Voucherify}
  spec.homepage      = "http://www.voucherify.io"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "pry", "~> 0.10"

  spec.add_dependency "rest-client", "~> 1.8"

  spec.required_ruby_version = '>= 1.9.3'
end
