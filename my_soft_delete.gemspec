# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'my_soft_delete/version'

Gem::Specification.new do |spec|
  spec.name          = "my_soft_delete"
  spec.version       = MySoftDelete::VERSION
  spec.authors       = ["Victor"]
  spec.email         = ["a2ninek@yahoo.com"]
  spec.summary       = %q{Simple gem for soft delete.}
  spec.description   = %q{Simple gem for soft delete.}
  spec.homepage      = "https://github.com/victorcreed/soft_delete.git"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
end
