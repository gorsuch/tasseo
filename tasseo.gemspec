# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'tasseo/version'

Gem::Specification.new do |gem|
  gem.name          = "tasseo"
  gem.version       = Tasseo::VERSION
  gem.authors       = ["Jason Dixon", "Michael Gorsuch"]
  gem.email         = ["michael.gorsuch@gmail.com"]
  gem.description   = %q{Real-time dashboard for Graphite}
  gem.summary       = gem.description
  gem.homepage      = "https://github.com/obfuscurity/tasseo"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
  gem.add_dependency('haml')
  gem.add_dependency('rack-ssl-enforcer')
  gem.add_dependency('sinatra')
  gem.add_dependency('sinatra_auth_github')
  gem.add_development_dependency('rack-test')
  gem.add_development_dependency('rake')
  gem.add_development_dependency('rspec')
end

