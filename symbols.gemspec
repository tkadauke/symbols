# -*- encoding: utf-8 -*-
Gem::Specification.new do |s|
  s.name        = "symbols"
  s.version     = "0.0.1"
  s.authors     = ["Thomas Kadauke"]
  s.email       = ["thomas.kadauke@googlemail.com"]
  s.homepage    = "https://github.com/tkadauke/symbols"
  s.summary     = "Defines UTF-8 symbols for common math concepts"
  s.description = "Defines UTF-8 symbols for common math concepts"

  s.files         = `git ls-files`.split($\)
  s.test_files    = s.files.grep(%r{^(test|spec|features)/})
  s.require_paths = ["lib"]

  s.add_development_dependency 'rake'
end
