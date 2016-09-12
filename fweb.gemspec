# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fweb/version'

Gem::Specification.new do |spec|
  spec.name          = "fweb"
  spec.version       = FWeb::VERSION
  spec.authors       = ["Aston Fu"]
  spec.email         = ["fudhao@gmail.com"]

  spec.summary       = %q{Fuzzing web.}
  spec.description   = %q{Fuzzing web browser or content.}
  spec.homepage      = "https://astonfu.github.com/fweb"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
end
