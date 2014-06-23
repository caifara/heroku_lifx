# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'heroku_lifx/version'

Gem::Specification.new do |spec|
  spec.name          = "heroku_lifx"
  spec.version       = HerokuLifx::VERSION
  spec.authors       = ["Ivo Dancet"]
  spec.email         = ["ivo.dancet@gmail.com"]
  spec.summary       = %q{LIFX bulb as a Heroku status light}
  spec.description   = %q{}
  spec.homepage      = "https://github.com/caifara/heroku_lifx"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"

  spec.add_runtime_dependency "lifx", "~> 0.4.11"
end
