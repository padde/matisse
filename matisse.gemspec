# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'matisse/version'

Gem::Specification.new do |gem|
  # development dependencies
  gem.add_development_dependency "rake"
  
  # dependencies
  gem.add_dependency "colorize"
  
  gem.name          = "matisse"
  gem.version       = Matisse::VERSION
  gem.authors       = ["Patrick Oscity"]
  gem.email         = ["patrick.oscity@gmail.com"]
  gem.description   = "Matisse is a simple IRB output highlighter that just works."
  gem.summary       = "IRB output highlighter"
  gem.homepage      = "http://rubygems.org/gems/matisse"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
