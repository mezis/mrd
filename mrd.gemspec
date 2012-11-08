# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mrd/version'

Gem::Specification.new do |gem|
  gem.name          = "mrd"
  gem.version       = Mrd::VERSION
  gem.authors       = ["Julien Letessier"]
  gem.email         = ["julien.letessier@gmail.com"]
  gem.description   = %q{Under Darwin, spawns a temporary MySQL instance off a RAM disk. Useful to speed up large test suites, your machine usable while running them, and preserve your SSD's life!}
  gem.summary       = %q{Run MySQL off a RAM disk}
  gem.homepage      = ""

  gem.add_development_dependency "rake"
  gem.add_dependency "term-ansicolor"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
