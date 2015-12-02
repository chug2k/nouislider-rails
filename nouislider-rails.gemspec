# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'nouislider/rails/version'

Gem::Specification.new do |spec|
  spec.name          = "nouislider-rails"
  spec.version       = Nouislider::Rails::VERSION
  spec.authors       = ["Charles Lee"]
  spec.email         = ["chug2k@gmail.com"]
  spec.summary       = "nouislider.js for the Rails asset pipeline."
  spec.description   = "Currently tracking #{Nouislider::Rails::VERSION} of noUiSlider: https://github.com/leongersen/noUiSlider). All credit and thanks to @leongersen for the awesome library."
  spec.homepage      = "https://github.com/chug2k/nouislider-rails"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.require_paths = ["lib"]

  spec.add_dependency "railties", ">= 3.1"
  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
