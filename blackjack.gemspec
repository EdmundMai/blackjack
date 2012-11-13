# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'blackjack/version'

Gem::Specification.new do |gem|
  gem.name          = "blackjack"
  gem.version       = Blackjack::VERSION
  gem.authors       = ["Edmund Mai"]
  gem.email         = ["edmundmai@gmail.com"]
  gem.description   = %q{Blackjack card game}
  gem.summary       = %q{Play blackjack with your console}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
