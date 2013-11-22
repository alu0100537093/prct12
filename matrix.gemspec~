# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'matrix/version'

Gem::Specification.new do |spec|
  spec.name          = "matrix"
  spec.version       = Matrix::VERSION
  spec.authors       = ["Jazer"]
  spec.email         = ["alu0100595727@ull.edu.es"]
  spec.description   = %q{Gema para matrices densas y dispersas}
  spec.summary       = %q{Gema para matrices con diferentes metodos de representacion de matrices dispersas y densas}
  spec.homepage      = "https://github.com/alu0100595727/practica9.git"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
