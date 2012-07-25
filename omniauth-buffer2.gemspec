# -*- encoding: utf-8 -*-
require File.expand_path('../lib/omniauth-buffer2/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Tom Ashworth"]
  gem.email         = ["tom@phuu.net"]
  gem.description   = %q{TODO: Write a gem description}
  gem.summary       = %q{TODO: Write a gem summary}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "omniauth-buffer2"
  gem.require_paths = ["lib"]
  gem.version       = Omniauth::Buffer2::VERSION

  gem.add_dependency 'omniauth', '~> 1.0'
  gem.add_dependency 'omniauth-oauth2', '~> 1.1'
  gem.add_development_dependency "rspec", "~> 2.7"
end
