# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'voucherify/version'

Gem::Specification.new do |spec|
  spec.name          = 'voucherify'
  spec.version       = Voucherify::VERSION
  spec.authors       = ['pawelrychlik']
  spec.email         = ['pawel.rychlik@rspective.pl']

  spec.summary       = %q{Ruby SDK for Voucherify. More info on http://www.voucherify.io}
  spec.homepage      = 'https://github.com/rspective/voucherify-ruby-sdk/'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'rake', '~> 13.0.1'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'webmock', '~> 3.8.2'

  spec.add_dependency 'rest-client', '~> 2.0'

  spec.required_ruby_version = '>= 2.2.0'
end
